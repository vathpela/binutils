/* Low level interface to i386 running the GNU Hurd.

   Copyright (C) 1992-2025 Free Software Foundation, Inc.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* Include this first, to pick up the <mach.h> 'thread_info' diversion.  */
#include "gnu-nat.h"

/* Mach/Hurd headers are not yet ready for C++ compilation.  */
extern "C"
{
#include <mach.h>
#include <mach_error.h>
#include <mach/message.h>
#include <mach/exception.h>
}

#include "x86-nat.h"
#include "inferior.h"
#include "floatformat.h"
#include "regcache.h"


#ifdef __x86_64__
#include "amd64-tdep.h"
#include "amd64-nat.h"
#else
#include "i386-tdep.h"
#endif

#include "inf-child.h"
#include "i387-tdep.h"

/* Offset to the thread_state_t location where REG is stored.  */
#define REG_OFFSET(reg) offsetof (struct i386_thread_state, reg)

#ifdef __x86_64__

/* At REG_OFFSET[N] is the offset to the thread_state_t location where
   the GDB register N is stored.  */
static int amd64_gnu_thread_state_reg_offset[] =
{
  REG_OFFSET (rax),		/* %rax */
  REG_OFFSET (rbx),		/* %rbx */
  REG_OFFSET (rcx),		/* %rcx */
  REG_OFFSET (rdx),		/* %rdx */
  REG_OFFSET (rsi),		/* %rsi */
  REG_OFFSET (rdi),		/* %rdi */
  REG_OFFSET (rbp),		/* %rbp */
  REG_OFFSET (ursp),	/* %rsp */
  REG_OFFSET (r8),		/* %r8 ...  */
  REG_OFFSET (r9),
  REG_OFFSET (r10),
  REG_OFFSET (r11),
  REG_OFFSET (r12),
  REG_OFFSET (r13),
  REG_OFFSET (r14),
  REG_OFFSET (r15),		/* ... %r15 */
  REG_OFFSET (rip),		/* %rip */
  REG_OFFSET (rfl),		/* %rflags */
  REG_OFFSET (cs)	    /* %cs */
};

static const int amd64_gnu_thread_state_num_regs =
  ARRAY_SIZE (amd64_gnu_thread_state_reg_offset);

#define REG_ADDR(state, regnum) \
  ((char *)(state) + amd64_gnu_thread_state_reg_offset[regnum])
#define VALID_REGISTER(regnum) \
  ((regnum) >= 0 && (regnum) < amd64_gnu_thread_state_num_regs)
#define NUM_GREGS amd64_gnu_thread_state_num_regs
#define FLAGS_REGISTER rfl

#else

/* At REG_OFFSET[N] is the offset to the thread_state_t location where
   the GDB register N is stored.  */
static int i386_gnu_thread_state_reg_offset[] =
{
  REG_OFFSET (eax),	/* %eax */
  REG_OFFSET (ecx),	/* %ecx */
  REG_OFFSET (edx),	/* %edx */
  REG_OFFSET (ebx),	/* %ebx */
  REG_OFFSET (uesp),	/* %esp */
  REG_OFFSET (ebp),	/* %ebp */
  REG_OFFSET (esi),	/* %esi */
  REG_OFFSET (edi),	/* %edi */
  REG_OFFSET (eip),	/* %eip */
  REG_OFFSET (efl),	/* %efl */
  REG_OFFSET (cs),	/* %cs */
  REG_OFFSET (ss),	/* %ss */
  REG_OFFSET (ds),	/* %ds */
  REG_OFFSET (es),	/* %es */
  REG_OFFSET (fs),	/* %fs */
  REG_OFFSET (gs)	/* gs */
};

static const int i386_gnu_thread_state_num_regs =
  ARRAY_SIZE (i386_gnu_thread_state_reg_offset);

#define REG_ADDR(state, regnum) \
  ((char *)(state) + i386_gnu_thread_state_reg_offset[regnum])
#define VALID_REGISTER(regnum) \
  ((regnum) >= 0 && (regnum) < i386_gnu_thread_state_num_regs)
#define NUM_GREGS i386_gnu_thread_state_num_regs
#define FLAGS_REGISTER efl

#endif  /* __x86_64__ */



/* The x86 GNU Hurd target.  */

#ifdef i386_DEBUG_STATE
using gnu_base_target = x86_nat_target<gnu_nat_target>;
#else
using gnu_base_target = gnu_nat_target;
#endif

struct x86_gnu_nat_target final : public gnu_base_target
{
  void fetch_registers (struct regcache *, int) override;
  void store_registers (struct regcache *, int) override;
};

static x86_gnu_nat_target the_x86_gnu_nat_target;

/* Get the whole floating-point state of THREAD and record the values
   of the corresponding (pseudo) registers.  */

static void
fetch_fpregs (struct regcache *regcache, struct proc *thread)
{
  mach_msg_type_number_t count = i386_FLOAT_STATE_COUNT;
  struct i386_float_state state;
  kern_return_t err;

  err = thread_get_state (thread->port, i386_FLOAT_STATE,
			  (thread_state_t) &state, &count);
  if (err)
    {
      warning (_("Couldn't fetch floating-point state from %s"),
	       proc_string (thread));
      return;
    }

  if (!state.initialized)
    {
      /* The floating-point state isn't initialized.  */
      i387_supply_fsave (regcache, -1, NULL);
    }
  else
    {
      /* Supply the floating-point registers.  */
      i387_supply_fsave (regcache, -1, state.hw_state);
    }
}

/* Fetch register REGNO, or all regs if REGNO is -1.  */
void
x86_gnu_nat_target::fetch_registers (struct regcache *regcache, int regno)
{
  struct proc *thread;
  ptid_t ptid = regcache->ptid ();

  /* Make sure we know about new threads.  */
  inf_update_procs (gnu_current_inf);

  thread = inf_tid_to_thread (gnu_current_inf, ptid.lwp ());
  if (!thread)
    error (_("Can't fetch registers from thread %s: No such thread"),
	   target_pid_to_str (ptid).c_str ());

  if (VALID_REGISTER (regno) || regno == -1)
    {
      thread_state_t state;

      /* This does the dirty work for us.  */
      state = proc_get_state (thread, 0);
      if (!state)
	{
	  warning (_("Couldn't fetch registers from %s"),
		   proc_string (thread));
	  return;
	}

      if (regno == -1)
	{
	  int i;

	  proc_debug (thread, "fetching all register");

	  for (i = 0; i < NUM_GREGS; i++)
	    regcache->raw_supply (i, REG_ADDR (state, i));
	  thread->fetched_regs = ~0;
	}
      else
	{
	  proc_debug (thread, "fetching register %s",
		      gdbarch_register_name (regcache->arch (),
					     regno));

	  regcache->raw_supply (regno, REG_ADDR (state, regno));
	  thread->fetched_regs |= (1 << regno);
	}
    }

  if (!VALID_REGISTER(regno) || regno == -1)
    {
      proc_debug (thread, "fetching floating-point registers");

      fetch_fpregs (regcache, thread);
    }
}


/* Store the whole floating-point state into THREAD using information
   from the corresponding (pseudo) registers.  */
static void
store_fpregs (const struct regcache *regcache, struct proc *thread, int regno)
{
  mach_msg_type_number_t count = i386_FLOAT_STATE_COUNT;
  struct i386_float_state state;
  kern_return_t err;

  err = thread_get_state (thread->port, i386_FLOAT_STATE,
			  (thread_state_t) &state, &count);
  if (err)
    {
      warning (_("Couldn't fetch floating-point state from %s"),
	       proc_string (thread));
      return;
    }

  /* FIXME: kettenis/2001-07-15: Is this right?  Should we somehow
     take into account DEPRECATED_REGISTER_VALID like the old code did?  */
  i387_collect_fsave (regcache, regno, state.hw_state);

  err = thread_set_state (thread->port, i386_FLOAT_STATE,
			  (thread_state_t) &state, i386_FLOAT_STATE_COUNT);
  if (err)
    {
      warning (_("Couldn't store floating-point state into %s"),
	       proc_string (thread));
      return;
    }
}

/* Store at least register REGNO, or all regs if REGNO == -1.  */
void
x86_gnu_nat_target::store_registers (struct regcache *regcache, int regno)
{
  struct proc *thread;
  struct gdbarch *gdbarch = regcache->arch ();
  ptid_t ptid = regcache->ptid ();

  /* Make sure we know about new threads.  */
  inf_update_procs (gnu_current_inf);

  thread = inf_tid_to_thread (gnu_current_inf, ptid.lwp ());
  if (!thread)
    error (_("Couldn't store registers into thread %s: No such thread"),
	   target_pid_to_str (ptid).c_str ());

  if (VALID_REGISTER (regno) || regno == -1)
    {
      thread_state_t state;
      thread_state_data_t old_state;
      int was_aborted = thread->aborted;
      int was_valid = thread->state_valid;
      int trace;

      if (!was_aborted && was_valid)
	memcpy (&old_state, &thread->state, sizeof (old_state));

      state = proc_get_state (thread, 1);
      if (!state)
	{
	  warning (_("Couldn't store registers into %s"),
		   proc_string (thread));
	  return;
	}

      /* Save the T bit.  We might try to restore the %eflags register
	 below, but changing the T bit would seriously confuse GDB.  */
      trace = ((struct i386_thread_state *)state)->FLAGS_REGISTER & 0x100;

      if (!was_aborted && was_valid)
	/* See which registers have changed after aborting the thread.  */
	{
	  int check_regno;

	  for (check_regno = 0; check_regno < NUM_GREGS; check_regno++)
	    if ((thread->fetched_regs & (1 << check_regno))
		&& memcpy (REG_ADDR (&old_state, check_regno),
			   REG_ADDR (state, check_regno),
			   register_size (gdbarch, check_regno)))
	      /* Register CHECK_REGNO has changed!  Ack!  */
	      {
		warning (_("Register %s changed after the thread was aborted"),
			 gdbarch_register_name (gdbarch, check_regno));
		if (regno >= 0 && regno != check_regno)
		  /* Update GDB's copy of the register.  */
		  regcache->raw_supply (check_regno,
					REG_ADDR (state, check_regno));
		else
		  warning (_("... also writing this register!  "
			     "Suspicious..."));
	      }
	}

      if (regno == -1)
	{
	  int i;

	  proc_debug (thread, "storing all registers");

	  for (i = 0; i < NUM_GREGS; i++)
	    if (REG_VALID == regcache->get_register_status (i))
	      regcache->raw_collect (i, REG_ADDR (state, i));
	}
      else
	{
	  proc_debug (thread, "storing register %s",
		      gdbarch_register_name (gdbarch, regno));

	  gdb_assert (REG_VALID == regcache->get_register_status (regno));
	  regcache->raw_collect (regno, REG_ADDR (state, regno));
	}

      /* Restore the T bit.  */
      ((struct i386_thread_state *)state)->FLAGS_REGISTER &= ~0x100;
      ((struct i386_thread_state *)state)->FLAGS_REGISTER |= trace;
    }

  if (!VALID_REGISTER (regno) || regno == -1)
    {
      proc_debug (thread, "storing floating-point registers");

      store_fpregs (regcache, thread, regno);
    }
}


/* Support for debug registers.  */

#ifdef i386_DEBUG_STATE
/* Get debug registers for thread THREAD.  */

static void
x86_gnu_dr_get (struct i386_debug_state *regs, struct proc *thread)
{
  mach_msg_type_number_t count = i386_DEBUG_STATE_COUNT;
  kern_return_t err;

  err = thread_get_state (thread->port, i386_DEBUG_STATE,
			  (thread_state_t) regs, &count);
  if (err != 0 || count != i386_DEBUG_STATE_COUNT)
    warning (_("Couldn't fetch debug state from %s"),
	     proc_string (thread));
}

/* Set debug registers for thread THREAD.  */

static void
x86_gnu_dr_set (const struct i386_debug_state *regs, struct proc *thread)
{
  kern_return_t err;

  err = thread_set_state (thread->port, i386_DEBUG_STATE,
			  (thread_state_t) regs, i386_DEBUG_STATE_COUNT);
  if (err != 0)
    warning (_("Couldn't store debug state into %s"),
	     proc_string (thread));
}

/* Set DR_CONTROL in THREAD.  */

static void
x86_gnu_dr_set_control_one (struct proc *thread, void *arg)
{
  unsigned long *control = (unsigned long *) arg;
  struct i386_debug_state regs;

  x86_gnu_dr_get (&regs, thread);
  regs.dr[DR_CONTROL] = *control;
  x86_gnu_dr_set (&regs, thread);
}

/* Set DR_CONTROL to CONTROL in all threads.  */

static void
x86_gnu_dr_set_control (unsigned long control)
{
  inf_update_procs (gnu_current_inf);
  inf_threads (gnu_current_inf, x86_gnu_dr_set_control_one, &control);
}

/* Parameters to set a debugging address.  */

struct reg_addr
{
  int regnum;		/* Register number (zero based).  */
  CORE_ADDR addr;	/* Address.  */
};

/* Set address REGNUM (zero based) to ADDR in THREAD.  */

static void
x86_gnu_dr_set_addr_one (struct proc *thread, void *arg)
{
  struct reg_addr *reg_addr = (struct reg_addr *) arg;
  struct i386_debug_state regs;

  x86_gnu_dr_get (&regs, thread);
  regs.dr[reg_addr->regnum] = reg_addr->addr;
  x86_gnu_dr_set (&regs, thread);
}

/* Set address REGNUM (zero based) to ADDR in all threads.  */

static void
x86_gnu_dr_set_addr (int regnum, CORE_ADDR addr)
{
  struct reg_addr reg_addr;

  gdb_assert (DR_FIRSTADDR <= regnum && regnum <= DR_LASTADDR);

  reg_addr.regnum = regnum;
  reg_addr.addr = addr;

  inf_update_procs (gnu_current_inf);
  inf_threads (gnu_current_inf, x86_gnu_dr_set_addr_one, &reg_addr);
}

/* Get debug register REGNUM value from only the one LWP of PTID.  */

static unsigned long
x86_gnu_dr_get_reg (ptid_t ptid, int regnum)
{
  struct i386_debug_state regs;
  struct proc *thread;

  /* Make sure we know about new threads.  */
  inf_update_procs (gnu_current_inf);

  thread = inf_tid_to_thread (gnu_current_inf, ptid.lwp ());
  x86_gnu_dr_get (&regs, thread);

  return regs.dr[regnum];
}

/* Return the inferior's debug register REGNUM.  */

static CORE_ADDR
x86_gnu_dr_get_addr (int regnum)
{
  gdb_assert (DR_FIRSTADDR <= regnum && regnum <= DR_LASTADDR);

  return x86_gnu_dr_get_reg (inferior_ptid, regnum);
}

/* Get DR_STATUS from only the one thread of INFERIOR_PTID.  */

static unsigned long
x86_gnu_dr_get_status (void)
{
  return x86_gnu_dr_get_reg (inferior_ptid, DR_STATUS);
}

/* Return the inferior's DR7 debug control register.  */

static unsigned long
x86_gnu_dr_get_control (void)
{
  return x86_gnu_dr_get_reg (inferior_ptid, DR_CONTROL);
}
#endif /* i386_DEBUG_STATE */

INIT_GDB_FILE (x86_gnu_nat)
{
#ifdef i386_DEBUG_STATE
  x86_dr_low.set_control = x86_gnu_dr_set_control;
  gdb_assert (DR_FIRSTADDR == 0 && DR_LASTADDR < i386_DEBUG_STATE_COUNT);
  x86_dr_low.set_addr = x86_gnu_dr_set_addr;
  x86_dr_low.get_addr = x86_gnu_dr_get_addr;
  x86_dr_low.get_status = x86_gnu_dr_get_status;
  x86_dr_low.get_control = x86_gnu_dr_get_control;
#ifdef __x86_64__
  x86_set_debug_register_length (8);
#else
  x86_set_debug_register_length (4);
#endif
#endif /* i386_DEBUG_STATE */

  gnu_target = &the_x86_gnu_nat_target;

  /* Register the target.  */
  add_inf_child_target (&the_x86_gnu_nat_target);
}
