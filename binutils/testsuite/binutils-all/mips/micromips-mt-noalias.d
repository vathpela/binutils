#PROG: objcopy
#objdump: -M no-aliases -d --prefix-addresses --show-raw-insn
#name: microMIPS MT ASE instruction canonical disassembly
#as: -mmicromips -mips32r2 -mmt
#source: ../../../../gas/testsuite/gas/mips/mips32-mt.s

.*: +file format .*mips.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]*> 0000 057c 	dmt
[0-9a-f]+ <[^>]*> 03e0 057c 	dmt	ra
[0-9a-f]+ <[^>]*> 0000 157c 	dvpe
[0-9a-f]+ <[^>]*> 0020 157c 	dvpe	at
[0-9a-f]+ <[^>]*> 0000 257c 	emt
[0-9a-f]+ <[^>]*> 0040 257c 	emt	v0
[0-9a-f]+ <[^>]*> 0000 357c 	evpe
[0-9a-f]+ <[^>]*> 0060 357c 	evpe	v1
[0-9a-f]+ <[^>]*> 00c5 2027 	fork	a0,a1,a2
[0-9a-f]+ <[^>]*> 00a0 09bc 	yield	a1
[0-9a-f]+ <[^>]*> 00e6 09bc 	yield	a2,a3
[0-9a-f]+ <[^>]*> 0107 000e 	mftr	a3,\$8,0,0,0
[0-9a-f]+ <[^>]*> 0008 000e 	mftr	t0,\$0,0,0,0
[0-9a-f]+ <[^>]*> 0008 001e 	mftr	t0,\$0,0,1,0
[0-9a-f]+ <[^>]*> 0008 002e 	mftr	t0,\$0,0,2,0
[0-9a-f]+ <[^>]*> 0008 003e 	mftr	t0,\$0,0,3,0
[0-9a-f]+ <[^>]*> 0008 004e 	mftr	t0,\$0,0,4,0
[0-9a-f]+ <[^>]*> 0008 005e 	mftr	t0,\$0,0,5,0
[0-9a-f]+ <[^>]*> 0008 006e 	mftr	t0,\$0,0,6,0
[0-9a-f]+ <[^>]*> 0008 007e 	mftr	t0,\$0,0,7,0
[0-9a-f]+ <[^>]*> 0028 000e 	mftr	t0,\$1,0,0,0
[0-9a-f]+ <[^>]*> 0028 001e 	mftr	t0,\$1,0,1,0
[0-9a-f]+ <[^>]*> 0028 002e 	mftr	t0,\$1,0,2,0
[0-9a-f]+ <[^>]*> 0028 003e 	mftr	t0,\$1,0,3,0
[0-9a-f]+ <[^>]*> 0028 004e 	mftr	t0,\$1,0,4,0
[0-9a-f]+ <[^>]*> 0028 005e 	mftr	t0,\$1,0,5,0
[0-9a-f]+ <[^>]*> 0028 006e 	mftr	t0,\$1,0,6,0
[0-9a-f]+ <[^>]*> 0028 007e 	mftr	t0,\$1,0,7,0
[0-9a-f]+ <[^>]*> 0048 000e 	mftr	t0,\$2,0,0,0
[0-9a-f]+ <[^>]*> 0048 001e 	mftr	t0,\$2,0,1,0
[0-9a-f]+ <[^>]*> 0048 002e 	mftr	t0,\$2,0,2,0
[0-9a-f]+ <[^>]*> 0048 003e 	mftr	t0,\$2,0,3,0
[0-9a-f]+ <[^>]*> 0048 004e 	mftr	t0,\$2,0,4,0
[0-9a-f]+ <[^>]*> 0048 005e 	mftr	t0,\$2,0,5,0
[0-9a-f]+ <[^>]*> 0048 006e 	mftr	t0,\$2,0,6,0
[0-9a-f]+ <[^>]*> 0048 007e 	mftr	t0,\$2,0,7,0
[0-9a-f]+ <[^>]*> 0068 000e 	mftr	t0,\$3,0,0,0
[0-9a-f]+ <[^>]*> 0068 001e 	mftr	t0,\$3,0,1,0
[0-9a-f]+ <[^>]*> 0068 002e 	mftr	t0,\$3,0,2,0
[0-9a-f]+ <[^>]*> 0068 003e 	mftr	t0,\$3,0,3,0
[0-9a-f]+ <[^>]*> 0068 004e 	mftr	t0,\$3,0,4,0
[0-9a-f]+ <[^>]*> 0068 005e 	mftr	t0,\$3,0,5,0
[0-9a-f]+ <[^>]*> 0068 006e 	mftr	t0,\$3,0,6,0
[0-9a-f]+ <[^>]*> 0068 007e 	mftr	t0,\$3,0,7,0
[0-9a-f]+ <[^>]*> 0088 000e 	mftr	t0,\$4,0,0,0
[0-9a-f]+ <[^>]*> 0088 001e 	mftr	t0,\$4,0,1,0
[0-9a-f]+ <[^>]*> 0088 002e 	mftr	t0,\$4,0,2,0
[0-9a-f]+ <[^>]*> 0088 003e 	mftr	t0,\$4,0,3,0
[0-9a-f]+ <[^>]*> 0088 004e 	mftr	t0,\$4,0,4,0
[0-9a-f]+ <[^>]*> 0088 005e 	mftr	t0,\$4,0,5,0
[0-9a-f]+ <[^>]*> 0088 006e 	mftr	t0,\$4,0,6,0
[0-9a-f]+ <[^>]*> 0088 007e 	mftr	t0,\$4,0,7,0
[0-9a-f]+ <[^>]*> 00a8 000e 	mftr	t0,\$5,0,0,0
[0-9a-f]+ <[^>]*> 00a8 001e 	mftr	t0,\$5,0,1,0
[0-9a-f]+ <[^>]*> 00a8 002e 	mftr	t0,\$5,0,2,0
[0-9a-f]+ <[^>]*> 00a8 003e 	mftr	t0,\$5,0,3,0
[0-9a-f]+ <[^>]*> 00a8 004e 	mftr	t0,\$5,0,4,0
[0-9a-f]+ <[^>]*> 00a8 005e 	mftr	t0,\$5,0,5,0
[0-9a-f]+ <[^>]*> 00a8 006e 	mftr	t0,\$5,0,6,0
[0-9a-f]+ <[^>]*> 00a8 007e 	mftr	t0,\$5,0,7,0
[0-9a-f]+ <[^>]*> 00c8 000e 	mftr	t0,\$6,0,0,0
[0-9a-f]+ <[^>]*> 00c8 001e 	mftr	t0,\$6,0,1,0
[0-9a-f]+ <[^>]*> 00c8 002e 	mftr	t0,\$6,0,2,0
[0-9a-f]+ <[^>]*> 00c8 003e 	mftr	t0,\$6,0,3,0
[0-9a-f]+ <[^>]*> 00c8 004e 	mftr	t0,\$6,0,4,0
[0-9a-f]+ <[^>]*> 00c8 005e 	mftr	t0,\$6,0,5,0
[0-9a-f]+ <[^>]*> 00c8 006e 	mftr	t0,\$6,0,6,0
[0-9a-f]+ <[^>]*> 00c8 007e 	mftr	t0,\$6,0,7,0
[0-9a-f]+ <[^>]*> 00e8 000e 	mftr	t0,\$7,0,0,0
[0-9a-f]+ <[^>]*> 00e8 001e 	mftr	t0,\$7,0,1,0
[0-9a-f]+ <[^>]*> 00e8 002e 	mftr	t0,\$7,0,2,0
[0-9a-f]+ <[^>]*> 00e8 003e 	mftr	t0,\$7,0,3,0
[0-9a-f]+ <[^>]*> 00e8 004e 	mftr	t0,\$7,0,4,0
[0-9a-f]+ <[^>]*> 00e8 005e 	mftr	t0,\$7,0,5,0
[0-9a-f]+ <[^>]*> 00e8 006e 	mftr	t0,\$7,0,6,0
[0-9a-f]+ <[^>]*> 00e8 007e 	mftr	t0,\$7,0,7,0
[0-9a-f]+ <[^>]*> 0108 000e 	mftr	t0,\$8,0,0,0
[0-9a-f]+ <[^>]*> 0108 001e 	mftr	t0,\$8,0,1,0
[0-9a-f]+ <[^>]*> 0108 002e 	mftr	t0,\$8,0,2,0
[0-9a-f]+ <[^>]*> 0108 003e 	mftr	t0,\$8,0,3,0
[0-9a-f]+ <[^>]*> 0108 004e 	mftr	t0,\$8,0,4,0
[0-9a-f]+ <[^>]*> 0108 005e 	mftr	t0,\$8,0,5,0
[0-9a-f]+ <[^>]*> 0108 006e 	mftr	t0,\$8,0,6,0
[0-9a-f]+ <[^>]*> 0108 007e 	mftr	t0,\$8,0,7,0
[0-9a-f]+ <[^>]*> 0128 000e 	mftr	t0,\$9,0,0,0
[0-9a-f]+ <[^>]*> 0128 001e 	mftr	t0,\$9,0,1,0
[0-9a-f]+ <[^>]*> 0128 002e 	mftr	t0,\$9,0,2,0
[0-9a-f]+ <[^>]*> 0128 003e 	mftr	t0,\$9,0,3,0
[0-9a-f]+ <[^>]*> 0128 004e 	mftr	t0,\$9,0,4,0
[0-9a-f]+ <[^>]*> 0128 005e 	mftr	t0,\$9,0,5,0
[0-9a-f]+ <[^>]*> 0128 006e 	mftr	t0,\$9,0,6,0
[0-9a-f]+ <[^>]*> 0128 007e 	mftr	t0,\$9,0,7,0
[0-9a-f]+ <[^>]*> 0148 000e 	mftr	t0,\$10,0,0,0
[0-9a-f]+ <[^>]*> 0148 001e 	mftr	t0,\$10,0,1,0
[0-9a-f]+ <[^>]*> 0148 002e 	mftr	t0,\$10,0,2,0
[0-9a-f]+ <[^>]*> 0148 003e 	mftr	t0,\$10,0,3,0
[0-9a-f]+ <[^>]*> 0148 004e 	mftr	t0,\$10,0,4,0
[0-9a-f]+ <[^>]*> 0148 005e 	mftr	t0,\$10,0,5,0
[0-9a-f]+ <[^>]*> 0148 006e 	mftr	t0,\$10,0,6,0
[0-9a-f]+ <[^>]*> 0148 007e 	mftr	t0,\$10,0,7,0
[0-9a-f]+ <[^>]*> 0168 000e 	mftr	t0,\$11,0,0,0
[0-9a-f]+ <[^>]*> 0168 001e 	mftr	t0,\$11,0,1,0
[0-9a-f]+ <[^>]*> 0168 002e 	mftr	t0,\$11,0,2,0
[0-9a-f]+ <[^>]*> 0168 003e 	mftr	t0,\$11,0,3,0
[0-9a-f]+ <[^>]*> 0168 004e 	mftr	t0,\$11,0,4,0
[0-9a-f]+ <[^>]*> 0168 005e 	mftr	t0,\$11,0,5,0
[0-9a-f]+ <[^>]*> 0168 006e 	mftr	t0,\$11,0,6,0
[0-9a-f]+ <[^>]*> 0168 007e 	mftr	t0,\$11,0,7,0
[0-9a-f]+ <[^>]*> 0188 000e 	mftr	t0,\$12,0,0,0
[0-9a-f]+ <[^>]*> 0188 001e 	mftr	t0,\$12,0,1,0
[0-9a-f]+ <[^>]*> 0188 002e 	mftr	t0,\$12,0,2,0
[0-9a-f]+ <[^>]*> 0188 003e 	mftr	t0,\$12,0,3,0
[0-9a-f]+ <[^>]*> 0188 004e 	mftr	t0,\$12,0,4,0
[0-9a-f]+ <[^>]*> 0188 005e 	mftr	t0,\$12,0,5,0
[0-9a-f]+ <[^>]*> 0188 006e 	mftr	t0,\$12,0,6,0
[0-9a-f]+ <[^>]*> 0188 007e 	mftr	t0,\$12,0,7,0
[0-9a-f]+ <[^>]*> 01a8 000e 	mftr	t0,\$13,0,0,0
[0-9a-f]+ <[^>]*> 01a8 001e 	mftr	t0,\$13,0,1,0
[0-9a-f]+ <[^>]*> 01a8 002e 	mftr	t0,\$13,0,2,0
[0-9a-f]+ <[^>]*> 01a8 003e 	mftr	t0,\$13,0,3,0
[0-9a-f]+ <[^>]*> 01a8 004e 	mftr	t0,\$13,0,4,0
[0-9a-f]+ <[^>]*> 01a8 005e 	mftr	t0,\$13,0,5,0
[0-9a-f]+ <[^>]*> 01a8 006e 	mftr	t0,\$13,0,6,0
[0-9a-f]+ <[^>]*> 01a8 007e 	mftr	t0,\$13,0,7,0
[0-9a-f]+ <[^>]*> 01c8 000e 	mftr	t0,\$14,0,0,0
[0-9a-f]+ <[^>]*> 01c8 001e 	mftr	t0,\$14,0,1,0
[0-9a-f]+ <[^>]*> 01c8 002e 	mftr	t0,\$14,0,2,0
[0-9a-f]+ <[^>]*> 01c8 003e 	mftr	t0,\$14,0,3,0
[0-9a-f]+ <[^>]*> 01c8 004e 	mftr	t0,\$14,0,4,0
[0-9a-f]+ <[^>]*> 01c8 005e 	mftr	t0,\$14,0,5,0
[0-9a-f]+ <[^>]*> 01c8 006e 	mftr	t0,\$14,0,6,0
[0-9a-f]+ <[^>]*> 01c8 007e 	mftr	t0,\$14,0,7,0
[0-9a-f]+ <[^>]*> 01e8 000e 	mftr	t0,\$15,0,0,0
[0-9a-f]+ <[^>]*> 01e8 001e 	mftr	t0,\$15,0,1,0
[0-9a-f]+ <[^>]*> 01e8 002e 	mftr	t0,\$15,0,2,0
[0-9a-f]+ <[^>]*> 01e8 003e 	mftr	t0,\$15,0,3,0
[0-9a-f]+ <[^>]*> 01e8 004e 	mftr	t0,\$15,0,4,0
[0-9a-f]+ <[^>]*> 01e8 005e 	mftr	t0,\$15,0,5,0
[0-9a-f]+ <[^>]*> 01e8 006e 	mftr	t0,\$15,0,6,0
[0-9a-f]+ <[^>]*> 01e8 007e 	mftr	t0,\$15,0,7,0
[0-9a-f]+ <[^>]*> 0208 000e 	mftr	t0,\$16,0,0,0
[0-9a-f]+ <[^>]*> 0208 001e 	mftr	t0,\$16,0,1,0
[0-9a-f]+ <[^>]*> 0208 002e 	mftr	t0,\$16,0,2,0
[0-9a-f]+ <[^>]*> 0208 003e 	mftr	t0,\$16,0,3,0
[0-9a-f]+ <[^>]*> 0208 004e 	mftr	t0,\$16,0,4,0
[0-9a-f]+ <[^>]*> 0208 005e 	mftr	t0,\$16,0,5,0
[0-9a-f]+ <[^>]*> 0208 006e 	mftr	t0,\$16,0,6,0
[0-9a-f]+ <[^>]*> 0208 007e 	mftr	t0,\$16,0,7,0
[0-9a-f]+ <[^>]*> 0228 000e 	mftr	t0,\$17,0,0,0
[0-9a-f]+ <[^>]*> 0228 001e 	mftr	t0,\$17,0,1,0
[0-9a-f]+ <[^>]*> 0228 002e 	mftr	t0,\$17,0,2,0
[0-9a-f]+ <[^>]*> 0228 003e 	mftr	t0,\$17,0,3,0
[0-9a-f]+ <[^>]*> 0228 004e 	mftr	t0,\$17,0,4,0
[0-9a-f]+ <[^>]*> 0228 005e 	mftr	t0,\$17,0,5,0
[0-9a-f]+ <[^>]*> 0228 006e 	mftr	t0,\$17,0,6,0
[0-9a-f]+ <[^>]*> 0228 007e 	mftr	t0,\$17,0,7,0
[0-9a-f]+ <[^>]*> 0248 000e 	mftr	t0,\$18,0,0,0
[0-9a-f]+ <[^>]*> 0248 001e 	mftr	t0,\$18,0,1,0
[0-9a-f]+ <[^>]*> 0248 002e 	mftr	t0,\$18,0,2,0
[0-9a-f]+ <[^>]*> 0248 003e 	mftr	t0,\$18,0,3,0
[0-9a-f]+ <[^>]*> 0248 004e 	mftr	t0,\$18,0,4,0
[0-9a-f]+ <[^>]*> 0248 005e 	mftr	t0,\$18,0,5,0
[0-9a-f]+ <[^>]*> 0248 006e 	mftr	t0,\$18,0,6,0
[0-9a-f]+ <[^>]*> 0248 007e 	mftr	t0,\$18,0,7,0
[0-9a-f]+ <[^>]*> 0268 000e 	mftr	t0,\$19,0,0,0
[0-9a-f]+ <[^>]*> 0268 001e 	mftr	t0,\$19,0,1,0
[0-9a-f]+ <[^>]*> 0268 002e 	mftr	t0,\$19,0,2,0
[0-9a-f]+ <[^>]*> 0268 003e 	mftr	t0,\$19,0,3,0
[0-9a-f]+ <[^>]*> 0268 004e 	mftr	t0,\$19,0,4,0
[0-9a-f]+ <[^>]*> 0268 005e 	mftr	t0,\$19,0,5,0
[0-9a-f]+ <[^>]*> 0268 006e 	mftr	t0,\$19,0,6,0
[0-9a-f]+ <[^>]*> 0268 007e 	mftr	t0,\$19,0,7,0
[0-9a-f]+ <[^>]*> 0288 000e 	mftr	t0,\$20,0,0,0
[0-9a-f]+ <[^>]*> 0288 001e 	mftr	t0,\$20,0,1,0
[0-9a-f]+ <[^>]*> 0288 002e 	mftr	t0,\$20,0,2,0
[0-9a-f]+ <[^>]*> 0288 003e 	mftr	t0,\$20,0,3,0
[0-9a-f]+ <[^>]*> 0288 004e 	mftr	t0,\$20,0,4,0
[0-9a-f]+ <[^>]*> 0288 005e 	mftr	t0,\$20,0,5,0
[0-9a-f]+ <[^>]*> 0288 006e 	mftr	t0,\$20,0,6,0
[0-9a-f]+ <[^>]*> 0288 007e 	mftr	t0,\$20,0,7,0
[0-9a-f]+ <[^>]*> 02a8 000e 	mftr	t0,\$21,0,0,0
[0-9a-f]+ <[^>]*> 02a8 001e 	mftr	t0,\$21,0,1,0
[0-9a-f]+ <[^>]*> 02a8 002e 	mftr	t0,\$21,0,2,0
[0-9a-f]+ <[^>]*> 02a8 003e 	mftr	t0,\$21,0,3,0
[0-9a-f]+ <[^>]*> 02a8 004e 	mftr	t0,\$21,0,4,0
[0-9a-f]+ <[^>]*> 02a8 005e 	mftr	t0,\$21,0,5,0
[0-9a-f]+ <[^>]*> 02a8 006e 	mftr	t0,\$21,0,6,0
[0-9a-f]+ <[^>]*> 02a8 007e 	mftr	t0,\$21,0,7,0
[0-9a-f]+ <[^>]*> 02c8 000e 	mftr	t0,\$22,0,0,0
[0-9a-f]+ <[^>]*> 02c8 001e 	mftr	t0,\$22,0,1,0
[0-9a-f]+ <[^>]*> 02c8 002e 	mftr	t0,\$22,0,2,0
[0-9a-f]+ <[^>]*> 02c8 003e 	mftr	t0,\$22,0,3,0
[0-9a-f]+ <[^>]*> 02c8 004e 	mftr	t0,\$22,0,4,0
[0-9a-f]+ <[^>]*> 02c8 005e 	mftr	t0,\$22,0,5,0
[0-9a-f]+ <[^>]*> 02c8 006e 	mftr	t0,\$22,0,6,0
[0-9a-f]+ <[^>]*> 02c8 007e 	mftr	t0,\$22,0,7,0
[0-9a-f]+ <[^>]*> 02e8 000e 	mftr	t0,\$23,0,0,0
[0-9a-f]+ <[^>]*> 02e8 001e 	mftr	t0,\$23,0,1,0
[0-9a-f]+ <[^>]*> 02e8 002e 	mftr	t0,\$23,0,2,0
[0-9a-f]+ <[^>]*> 02e8 003e 	mftr	t0,\$23,0,3,0
[0-9a-f]+ <[^>]*> 02e8 004e 	mftr	t0,\$23,0,4,0
[0-9a-f]+ <[^>]*> 02e8 005e 	mftr	t0,\$23,0,5,0
[0-9a-f]+ <[^>]*> 02e8 006e 	mftr	t0,\$23,0,6,0
[0-9a-f]+ <[^>]*> 02e8 007e 	mftr	t0,\$23,0,7,0
[0-9a-f]+ <[^>]*> 0308 000e 	mftr	t0,\$24,0,0,0
[0-9a-f]+ <[^>]*> 0308 001e 	mftr	t0,\$24,0,1,0
[0-9a-f]+ <[^>]*> 0308 002e 	mftr	t0,\$24,0,2,0
[0-9a-f]+ <[^>]*> 0308 003e 	mftr	t0,\$24,0,3,0
[0-9a-f]+ <[^>]*> 0308 004e 	mftr	t0,\$24,0,4,0
[0-9a-f]+ <[^>]*> 0308 005e 	mftr	t0,\$24,0,5,0
[0-9a-f]+ <[^>]*> 0308 006e 	mftr	t0,\$24,0,6,0
[0-9a-f]+ <[^>]*> 0308 007e 	mftr	t0,\$24,0,7,0
[0-9a-f]+ <[^>]*> 0328 000e 	mftr	t0,\$25,0,0,0
[0-9a-f]+ <[^>]*> 0328 001e 	mftr	t0,\$25,0,1,0
[0-9a-f]+ <[^>]*> 0328 002e 	mftr	t0,\$25,0,2,0
[0-9a-f]+ <[^>]*> 0328 003e 	mftr	t0,\$25,0,3,0
[0-9a-f]+ <[^>]*> 0328 004e 	mftr	t0,\$25,0,4,0
[0-9a-f]+ <[^>]*> 0328 005e 	mftr	t0,\$25,0,5,0
[0-9a-f]+ <[^>]*> 0328 006e 	mftr	t0,\$25,0,6,0
[0-9a-f]+ <[^>]*> 0328 007e 	mftr	t0,\$25,0,7,0
[0-9a-f]+ <[^>]*> 0348 000e 	mftr	t0,\$26,0,0,0
[0-9a-f]+ <[^>]*> 0348 001e 	mftr	t0,\$26,0,1,0
[0-9a-f]+ <[^>]*> 0348 002e 	mftr	t0,\$26,0,2,0
[0-9a-f]+ <[^>]*> 0348 003e 	mftr	t0,\$26,0,3,0
[0-9a-f]+ <[^>]*> 0348 004e 	mftr	t0,\$26,0,4,0
[0-9a-f]+ <[^>]*> 0348 005e 	mftr	t0,\$26,0,5,0
[0-9a-f]+ <[^>]*> 0348 006e 	mftr	t0,\$26,0,6,0
[0-9a-f]+ <[^>]*> 0348 007e 	mftr	t0,\$26,0,7,0
[0-9a-f]+ <[^>]*> 0368 000e 	mftr	t0,\$27,0,0,0
[0-9a-f]+ <[^>]*> 0368 001e 	mftr	t0,\$27,0,1,0
[0-9a-f]+ <[^>]*> 0368 002e 	mftr	t0,\$27,0,2,0
[0-9a-f]+ <[^>]*> 0368 003e 	mftr	t0,\$27,0,3,0
[0-9a-f]+ <[^>]*> 0368 004e 	mftr	t0,\$27,0,4,0
[0-9a-f]+ <[^>]*> 0368 005e 	mftr	t0,\$27,0,5,0
[0-9a-f]+ <[^>]*> 0368 006e 	mftr	t0,\$27,0,6,0
[0-9a-f]+ <[^>]*> 0368 007e 	mftr	t0,\$27,0,7,0
[0-9a-f]+ <[^>]*> 0388 000e 	mftr	t0,\$28,0,0,0
[0-9a-f]+ <[^>]*> 0388 001e 	mftr	t0,\$28,0,1,0
[0-9a-f]+ <[^>]*> 0388 002e 	mftr	t0,\$28,0,2,0
[0-9a-f]+ <[^>]*> 0388 003e 	mftr	t0,\$28,0,3,0
[0-9a-f]+ <[^>]*> 0388 004e 	mftr	t0,\$28,0,4,0
[0-9a-f]+ <[^>]*> 0388 005e 	mftr	t0,\$28,0,5,0
[0-9a-f]+ <[^>]*> 0388 006e 	mftr	t0,\$28,0,6,0
[0-9a-f]+ <[^>]*> 0388 007e 	mftr	t0,\$28,0,7,0
[0-9a-f]+ <[^>]*> 03a8 000e 	mftr	t0,\$29,0,0,0
[0-9a-f]+ <[^>]*> 03a8 001e 	mftr	t0,\$29,0,1,0
[0-9a-f]+ <[^>]*> 03a8 002e 	mftr	t0,\$29,0,2,0
[0-9a-f]+ <[^>]*> 03a8 003e 	mftr	t0,\$29,0,3,0
[0-9a-f]+ <[^>]*> 03a8 004e 	mftr	t0,\$29,0,4,0
[0-9a-f]+ <[^>]*> 03a8 005e 	mftr	t0,\$29,0,5,0
[0-9a-f]+ <[^>]*> 03a8 006e 	mftr	t0,\$29,0,6,0
[0-9a-f]+ <[^>]*> 03a8 007e 	mftr	t0,\$29,0,7,0
[0-9a-f]+ <[^>]*> 03c8 000e 	mftr	t0,\$30,0,0,0
[0-9a-f]+ <[^>]*> 03c8 001e 	mftr	t0,\$30,0,1,0
[0-9a-f]+ <[^>]*> 03c8 002e 	mftr	t0,\$30,0,2,0
[0-9a-f]+ <[^>]*> 03c8 003e 	mftr	t0,\$30,0,3,0
[0-9a-f]+ <[^>]*> 03c8 004e 	mftr	t0,\$30,0,4,0
[0-9a-f]+ <[^>]*> 03c8 005e 	mftr	t0,\$30,0,5,0
[0-9a-f]+ <[^>]*> 03c8 006e 	mftr	t0,\$30,0,6,0
[0-9a-f]+ <[^>]*> 03c8 007e 	mftr	t0,\$30,0,7,0
[0-9a-f]+ <[^>]*> 03e8 000e 	mftr	t0,\$31,0,0,0
[0-9a-f]+ <[^>]*> 03e8 001e 	mftr	t0,\$31,0,1,0
[0-9a-f]+ <[^>]*> 03e8 002e 	mftr	t0,\$31,0,2,0
[0-9a-f]+ <[^>]*> 03e8 003e 	mftr	t0,\$31,0,3,0
[0-9a-f]+ <[^>]*> 03e8 004e 	mftr	t0,\$31,0,4,0
[0-9a-f]+ <[^>]*> 03e8 005e 	mftr	t0,\$31,0,5,0
[0-9a-f]+ <[^>]*> 03e8 006e 	mftr	t0,\$31,0,6,0
[0-9a-f]+ <[^>]*> 03e8 007e 	mftr	t0,\$31,0,7,0
[0-9a-f]+ <[^>]*> 0149 040e 	mftr	t1,\$10,1,0,0
[0-9a-f]+ <[^>]*> 000a 041e 	mftr	t2,\$0,1,1,0
[0-9a-f]+ <[^>]*> 000b 041e 	mftr	t3,\$0,1,1,0
[0-9a-f]+ <[^>]*> 002c 041e 	mftr	t4,\$1,1,1,0
[0-9a-f]+ <[^>]*> 00ad 041e 	mftr	t5,\$5,1,1,0
[0-9a-f]+ <[^>]*> 004e 041e 	mftr	t6,\$2,1,1,0
[0-9a-f]+ <[^>]*> 014f 041e 	mftr	t7,\$10,1,1,0
[0-9a-f]+ <[^>]*> 0210 041e 	mftr	s0,\$16,1,1,0
[0-9a-f]+ <[^>]*> 0251 042e 	mftr	s1,\$18,1,2,0
[0-9a-f]+ <[^>]*> 0272 042e 	mftr	s2,\$19,1,2,0
[0-9a-f]+ <[^>]*> 0293 062e 	mftr	s3,\$20,1,2,1
[0-9a-f]+ <[^>]*> 02d4 062e 	mftr	s4,\$22,1,2,1
[0-9a-f]+ <[^>]*> 02d5 043e 	mftr	s5,\$22,1,3,0
[0-9a-f]+ <[^>]*> 02f6 043e 	mftr	s6,\$23,1,3,0
[0-9a-f]+ <[^>]*> 0317 044e 	mftr	s7,\$24,1,4,0
[0-9a-f]+ <[^>]*> 0338 064e 	mftr	t8,\$25,1,4,1
[0-9a-f]+ <[^>]*> 0359 045e 	mftr	t9,\$26,1,5,0
[0-9a-f]+ <[^>]*> 035b 0006 	mttr	k0,\$27,0,0,0
[0-9a-f]+ <[^>]*> 0360 0006 	mttr	k1,\$0,0,0,0
[0-9a-f]+ <[^>]*> 0360 0016 	mttr	k1,\$0,0,1,0
[0-9a-f]+ <[^>]*> 0360 0026 	mttr	k1,\$0,0,2,0
[0-9a-f]+ <[^>]*> 0360 0036 	mttr	k1,\$0,0,3,0
[0-9a-f]+ <[^>]*> 0360 0046 	mttr	k1,\$0,0,4,0
[0-9a-f]+ <[^>]*> 0360 0056 	mttr	k1,\$0,0,5,0
[0-9a-f]+ <[^>]*> 0360 0066 	mttr	k1,\$0,0,6,0
[0-9a-f]+ <[^>]*> 0360 0076 	mttr	k1,\$0,0,7,0
[0-9a-f]+ <[^>]*> 0361 0006 	mttr	k1,\$1,0,0,0
[0-9a-f]+ <[^>]*> 0361 0016 	mttr	k1,\$1,0,1,0
[0-9a-f]+ <[^>]*> 0361 0026 	mttr	k1,\$1,0,2,0
[0-9a-f]+ <[^>]*> 0361 0036 	mttr	k1,\$1,0,3,0
[0-9a-f]+ <[^>]*> 0361 0046 	mttr	k1,\$1,0,4,0
[0-9a-f]+ <[^>]*> 0361 0056 	mttr	k1,\$1,0,5,0
[0-9a-f]+ <[^>]*> 0361 0066 	mttr	k1,\$1,0,6,0
[0-9a-f]+ <[^>]*> 0361 0076 	mttr	k1,\$1,0,7,0
[0-9a-f]+ <[^>]*> 0362 0006 	mttr	k1,\$2,0,0,0
[0-9a-f]+ <[^>]*> 0362 0016 	mttr	k1,\$2,0,1,0
[0-9a-f]+ <[^>]*> 0362 0026 	mttr	k1,\$2,0,2,0
[0-9a-f]+ <[^>]*> 0362 0036 	mttr	k1,\$2,0,3,0
[0-9a-f]+ <[^>]*> 0362 0046 	mttr	k1,\$2,0,4,0
[0-9a-f]+ <[^>]*> 0362 0056 	mttr	k1,\$2,0,5,0
[0-9a-f]+ <[^>]*> 0362 0066 	mttr	k1,\$2,0,6,0
[0-9a-f]+ <[^>]*> 0362 0076 	mttr	k1,\$2,0,7,0
[0-9a-f]+ <[^>]*> 0363 0006 	mttr	k1,\$3,0,0,0
[0-9a-f]+ <[^>]*> 0363 0016 	mttr	k1,\$3,0,1,0
[0-9a-f]+ <[^>]*> 0363 0026 	mttr	k1,\$3,0,2,0
[0-9a-f]+ <[^>]*> 0363 0036 	mttr	k1,\$3,0,3,0
[0-9a-f]+ <[^>]*> 0363 0046 	mttr	k1,\$3,0,4,0
[0-9a-f]+ <[^>]*> 0363 0056 	mttr	k1,\$3,0,5,0
[0-9a-f]+ <[^>]*> 0363 0066 	mttr	k1,\$3,0,6,0
[0-9a-f]+ <[^>]*> 0363 0076 	mttr	k1,\$3,0,7,0
[0-9a-f]+ <[^>]*> 0364 0006 	mttr	k1,\$4,0,0,0
[0-9a-f]+ <[^>]*> 0364 0016 	mttr	k1,\$4,0,1,0
[0-9a-f]+ <[^>]*> 0364 0026 	mttr	k1,\$4,0,2,0
[0-9a-f]+ <[^>]*> 0364 0036 	mttr	k1,\$4,0,3,0
[0-9a-f]+ <[^>]*> 0364 0046 	mttr	k1,\$4,0,4,0
[0-9a-f]+ <[^>]*> 0364 0056 	mttr	k1,\$4,0,5,0
[0-9a-f]+ <[^>]*> 0364 0066 	mttr	k1,\$4,0,6,0
[0-9a-f]+ <[^>]*> 0364 0076 	mttr	k1,\$4,0,7,0
[0-9a-f]+ <[^>]*> 0365 0006 	mttr	k1,\$5,0,0,0
[0-9a-f]+ <[^>]*> 0365 0016 	mttr	k1,\$5,0,1,0
[0-9a-f]+ <[^>]*> 0365 0026 	mttr	k1,\$5,0,2,0
[0-9a-f]+ <[^>]*> 0365 0036 	mttr	k1,\$5,0,3,0
[0-9a-f]+ <[^>]*> 0365 0046 	mttr	k1,\$5,0,4,0
[0-9a-f]+ <[^>]*> 0365 0056 	mttr	k1,\$5,0,5,0
[0-9a-f]+ <[^>]*> 0365 0066 	mttr	k1,\$5,0,6,0
[0-9a-f]+ <[^>]*> 0365 0076 	mttr	k1,\$5,0,7,0
[0-9a-f]+ <[^>]*> 0366 0006 	mttr	k1,\$6,0,0,0
[0-9a-f]+ <[^>]*> 0366 0016 	mttr	k1,\$6,0,1,0
[0-9a-f]+ <[^>]*> 0366 0026 	mttr	k1,\$6,0,2,0
[0-9a-f]+ <[^>]*> 0366 0036 	mttr	k1,\$6,0,3,0
[0-9a-f]+ <[^>]*> 0366 0046 	mttr	k1,\$6,0,4,0
[0-9a-f]+ <[^>]*> 0366 0056 	mttr	k1,\$6,0,5,0
[0-9a-f]+ <[^>]*> 0366 0066 	mttr	k1,\$6,0,6,0
[0-9a-f]+ <[^>]*> 0366 0076 	mttr	k1,\$6,0,7,0
[0-9a-f]+ <[^>]*> 0367 0006 	mttr	k1,\$7,0,0,0
[0-9a-f]+ <[^>]*> 0367 0016 	mttr	k1,\$7,0,1,0
[0-9a-f]+ <[^>]*> 0367 0026 	mttr	k1,\$7,0,2,0
[0-9a-f]+ <[^>]*> 0367 0036 	mttr	k1,\$7,0,3,0
[0-9a-f]+ <[^>]*> 0367 0046 	mttr	k1,\$7,0,4,0
[0-9a-f]+ <[^>]*> 0367 0056 	mttr	k1,\$7,0,5,0
[0-9a-f]+ <[^>]*> 0367 0066 	mttr	k1,\$7,0,6,0
[0-9a-f]+ <[^>]*> 0367 0076 	mttr	k1,\$7,0,7,0
[0-9a-f]+ <[^>]*> 0368 0006 	mttr	k1,\$8,0,0,0
[0-9a-f]+ <[^>]*> 0368 0016 	mttr	k1,\$8,0,1,0
[0-9a-f]+ <[^>]*> 0368 0026 	mttr	k1,\$8,0,2,0
[0-9a-f]+ <[^>]*> 0368 0036 	mttr	k1,\$8,0,3,0
[0-9a-f]+ <[^>]*> 0368 0046 	mttr	k1,\$8,0,4,0
[0-9a-f]+ <[^>]*> 0368 0056 	mttr	k1,\$8,0,5,0
[0-9a-f]+ <[^>]*> 0368 0066 	mttr	k1,\$8,0,6,0
[0-9a-f]+ <[^>]*> 0368 0076 	mttr	k1,\$8,0,7,0
[0-9a-f]+ <[^>]*> 0369 0006 	mttr	k1,\$9,0,0,0
[0-9a-f]+ <[^>]*> 0369 0016 	mttr	k1,\$9,0,1,0
[0-9a-f]+ <[^>]*> 0369 0026 	mttr	k1,\$9,0,2,0
[0-9a-f]+ <[^>]*> 0369 0036 	mttr	k1,\$9,0,3,0
[0-9a-f]+ <[^>]*> 0369 0046 	mttr	k1,\$9,0,4,0
[0-9a-f]+ <[^>]*> 0369 0056 	mttr	k1,\$9,0,5,0
[0-9a-f]+ <[^>]*> 0369 0066 	mttr	k1,\$9,0,6,0
[0-9a-f]+ <[^>]*> 0369 0076 	mttr	k1,\$9,0,7,0
[0-9a-f]+ <[^>]*> 036a 0006 	mttr	k1,\$10,0,0,0
[0-9a-f]+ <[^>]*> 036a 0016 	mttr	k1,\$10,0,1,0
[0-9a-f]+ <[^>]*> 036a 0026 	mttr	k1,\$10,0,2,0
[0-9a-f]+ <[^>]*> 036a 0036 	mttr	k1,\$10,0,3,0
[0-9a-f]+ <[^>]*> 036a 0046 	mttr	k1,\$10,0,4,0
[0-9a-f]+ <[^>]*> 036a 0056 	mttr	k1,\$10,0,5,0
[0-9a-f]+ <[^>]*> 036a 0066 	mttr	k1,\$10,0,6,0
[0-9a-f]+ <[^>]*> 036a 0076 	mttr	k1,\$10,0,7,0
[0-9a-f]+ <[^>]*> 036b 0006 	mttr	k1,\$11,0,0,0
[0-9a-f]+ <[^>]*> 036b 0016 	mttr	k1,\$11,0,1,0
[0-9a-f]+ <[^>]*> 036b 0026 	mttr	k1,\$11,0,2,0
[0-9a-f]+ <[^>]*> 036b 0036 	mttr	k1,\$11,0,3,0
[0-9a-f]+ <[^>]*> 036b 0046 	mttr	k1,\$11,0,4,0
[0-9a-f]+ <[^>]*> 036b 0056 	mttr	k1,\$11,0,5,0
[0-9a-f]+ <[^>]*> 036b 0066 	mttr	k1,\$11,0,6,0
[0-9a-f]+ <[^>]*> 036b 0076 	mttr	k1,\$11,0,7,0
[0-9a-f]+ <[^>]*> 036c 0006 	mttr	k1,\$12,0,0,0
[0-9a-f]+ <[^>]*> 036c 0016 	mttr	k1,\$12,0,1,0
[0-9a-f]+ <[^>]*> 036c 0026 	mttr	k1,\$12,0,2,0
[0-9a-f]+ <[^>]*> 036c 0036 	mttr	k1,\$12,0,3,0
[0-9a-f]+ <[^>]*> 036c 0046 	mttr	k1,\$12,0,4,0
[0-9a-f]+ <[^>]*> 036c 0056 	mttr	k1,\$12,0,5,0
[0-9a-f]+ <[^>]*> 036c 0066 	mttr	k1,\$12,0,6,0
[0-9a-f]+ <[^>]*> 036c 0076 	mttr	k1,\$12,0,7,0
[0-9a-f]+ <[^>]*> 036d 0006 	mttr	k1,\$13,0,0,0
[0-9a-f]+ <[^>]*> 036d 0016 	mttr	k1,\$13,0,1,0
[0-9a-f]+ <[^>]*> 036d 0026 	mttr	k1,\$13,0,2,0
[0-9a-f]+ <[^>]*> 036d 0036 	mttr	k1,\$13,0,3,0
[0-9a-f]+ <[^>]*> 036d 0046 	mttr	k1,\$13,0,4,0
[0-9a-f]+ <[^>]*> 036d 0056 	mttr	k1,\$13,0,5,0
[0-9a-f]+ <[^>]*> 036d 0066 	mttr	k1,\$13,0,6,0
[0-9a-f]+ <[^>]*> 036d 0076 	mttr	k1,\$13,0,7,0
[0-9a-f]+ <[^>]*> 036e 0006 	mttr	k1,\$14,0,0,0
[0-9a-f]+ <[^>]*> 036e 0016 	mttr	k1,\$14,0,1,0
[0-9a-f]+ <[^>]*> 036e 0026 	mttr	k1,\$14,0,2,0
[0-9a-f]+ <[^>]*> 036e 0036 	mttr	k1,\$14,0,3,0
[0-9a-f]+ <[^>]*> 036e 0046 	mttr	k1,\$14,0,4,0
[0-9a-f]+ <[^>]*> 036e 0056 	mttr	k1,\$14,0,5,0
[0-9a-f]+ <[^>]*> 036e 0066 	mttr	k1,\$14,0,6,0
[0-9a-f]+ <[^>]*> 036e 0076 	mttr	k1,\$14,0,7,0
[0-9a-f]+ <[^>]*> 036f 0006 	mttr	k1,\$15,0,0,0
[0-9a-f]+ <[^>]*> 036f 0016 	mttr	k1,\$15,0,1,0
[0-9a-f]+ <[^>]*> 036f 0026 	mttr	k1,\$15,0,2,0
[0-9a-f]+ <[^>]*> 036f 0036 	mttr	k1,\$15,0,3,0
[0-9a-f]+ <[^>]*> 036f 0046 	mttr	k1,\$15,0,4,0
[0-9a-f]+ <[^>]*> 036f 0056 	mttr	k1,\$15,0,5,0
[0-9a-f]+ <[^>]*> 036f 0066 	mttr	k1,\$15,0,6,0
[0-9a-f]+ <[^>]*> 036f 0076 	mttr	k1,\$15,0,7,0
[0-9a-f]+ <[^>]*> 0370 0006 	mttr	k1,\$16,0,0,0
[0-9a-f]+ <[^>]*> 0370 0016 	mttr	k1,\$16,0,1,0
[0-9a-f]+ <[^>]*> 0370 0026 	mttr	k1,\$16,0,2,0
[0-9a-f]+ <[^>]*> 0370 0036 	mttr	k1,\$16,0,3,0
[0-9a-f]+ <[^>]*> 0370 0046 	mttr	k1,\$16,0,4,0
[0-9a-f]+ <[^>]*> 0370 0056 	mttr	k1,\$16,0,5,0
[0-9a-f]+ <[^>]*> 0370 0066 	mttr	k1,\$16,0,6,0
[0-9a-f]+ <[^>]*> 0370 0076 	mttr	k1,\$16,0,7,0
[0-9a-f]+ <[^>]*> 0371 0006 	mttr	k1,\$17,0,0,0
[0-9a-f]+ <[^>]*> 0371 0016 	mttr	k1,\$17,0,1,0
[0-9a-f]+ <[^>]*> 0371 0026 	mttr	k1,\$17,0,2,0
[0-9a-f]+ <[^>]*> 0371 0036 	mttr	k1,\$17,0,3,0
[0-9a-f]+ <[^>]*> 0371 0046 	mttr	k1,\$17,0,4,0
[0-9a-f]+ <[^>]*> 0371 0056 	mttr	k1,\$17,0,5,0
[0-9a-f]+ <[^>]*> 0371 0066 	mttr	k1,\$17,0,6,0
[0-9a-f]+ <[^>]*> 0371 0076 	mttr	k1,\$17,0,7,0
[0-9a-f]+ <[^>]*> 0372 0006 	mttr	k1,\$18,0,0,0
[0-9a-f]+ <[^>]*> 0372 0016 	mttr	k1,\$18,0,1,0
[0-9a-f]+ <[^>]*> 0372 0026 	mttr	k1,\$18,0,2,0
[0-9a-f]+ <[^>]*> 0372 0036 	mttr	k1,\$18,0,3,0
[0-9a-f]+ <[^>]*> 0372 0046 	mttr	k1,\$18,0,4,0
[0-9a-f]+ <[^>]*> 0372 0056 	mttr	k1,\$18,0,5,0
[0-9a-f]+ <[^>]*> 0372 0066 	mttr	k1,\$18,0,6,0
[0-9a-f]+ <[^>]*> 0372 0076 	mttr	k1,\$18,0,7,0
[0-9a-f]+ <[^>]*> 0373 0006 	mttr	k1,\$19,0,0,0
[0-9a-f]+ <[^>]*> 0373 0016 	mttr	k1,\$19,0,1,0
[0-9a-f]+ <[^>]*> 0373 0026 	mttr	k1,\$19,0,2,0
[0-9a-f]+ <[^>]*> 0373 0036 	mttr	k1,\$19,0,3,0
[0-9a-f]+ <[^>]*> 0373 0046 	mttr	k1,\$19,0,4,0
[0-9a-f]+ <[^>]*> 0373 0056 	mttr	k1,\$19,0,5,0
[0-9a-f]+ <[^>]*> 0373 0066 	mttr	k1,\$19,0,6,0
[0-9a-f]+ <[^>]*> 0373 0076 	mttr	k1,\$19,0,7,0
[0-9a-f]+ <[^>]*> 0374 0006 	mttr	k1,\$20,0,0,0
[0-9a-f]+ <[^>]*> 0374 0016 	mttr	k1,\$20,0,1,0
[0-9a-f]+ <[^>]*> 0374 0026 	mttr	k1,\$20,0,2,0
[0-9a-f]+ <[^>]*> 0374 0036 	mttr	k1,\$20,0,3,0
[0-9a-f]+ <[^>]*> 0374 0046 	mttr	k1,\$20,0,4,0
[0-9a-f]+ <[^>]*> 0374 0056 	mttr	k1,\$20,0,5,0
[0-9a-f]+ <[^>]*> 0374 0066 	mttr	k1,\$20,0,6,0
[0-9a-f]+ <[^>]*> 0374 0076 	mttr	k1,\$20,0,7,0
[0-9a-f]+ <[^>]*> 0375 0006 	mttr	k1,\$21,0,0,0
[0-9a-f]+ <[^>]*> 0375 0016 	mttr	k1,\$21,0,1,0
[0-9a-f]+ <[^>]*> 0375 0026 	mttr	k1,\$21,0,2,0
[0-9a-f]+ <[^>]*> 0375 0036 	mttr	k1,\$21,0,3,0
[0-9a-f]+ <[^>]*> 0375 0046 	mttr	k1,\$21,0,4,0
[0-9a-f]+ <[^>]*> 0375 0056 	mttr	k1,\$21,0,5,0
[0-9a-f]+ <[^>]*> 0375 0066 	mttr	k1,\$21,0,6,0
[0-9a-f]+ <[^>]*> 0375 0076 	mttr	k1,\$21,0,7,0
[0-9a-f]+ <[^>]*> 0376 0006 	mttr	k1,\$22,0,0,0
[0-9a-f]+ <[^>]*> 0376 0016 	mttr	k1,\$22,0,1,0
[0-9a-f]+ <[^>]*> 0376 0026 	mttr	k1,\$22,0,2,0
[0-9a-f]+ <[^>]*> 0376 0036 	mttr	k1,\$22,0,3,0
[0-9a-f]+ <[^>]*> 0376 0046 	mttr	k1,\$22,0,4,0
[0-9a-f]+ <[^>]*> 0376 0056 	mttr	k1,\$22,0,5,0
[0-9a-f]+ <[^>]*> 0376 0066 	mttr	k1,\$22,0,6,0
[0-9a-f]+ <[^>]*> 0376 0076 	mttr	k1,\$22,0,7,0
[0-9a-f]+ <[^>]*> 0377 0006 	mttr	k1,\$23,0,0,0
[0-9a-f]+ <[^>]*> 0377 0016 	mttr	k1,\$23,0,1,0
[0-9a-f]+ <[^>]*> 0377 0026 	mttr	k1,\$23,0,2,0
[0-9a-f]+ <[^>]*> 0377 0036 	mttr	k1,\$23,0,3,0
[0-9a-f]+ <[^>]*> 0377 0046 	mttr	k1,\$23,0,4,0
[0-9a-f]+ <[^>]*> 0377 0056 	mttr	k1,\$23,0,5,0
[0-9a-f]+ <[^>]*> 0377 0066 	mttr	k1,\$23,0,6,0
[0-9a-f]+ <[^>]*> 0377 0076 	mttr	k1,\$23,0,7,0
[0-9a-f]+ <[^>]*> 0378 0006 	mttr	k1,\$24,0,0,0
[0-9a-f]+ <[^>]*> 0378 0016 	mttr	k1,\$24,0,1,0
[0-9a-f]+ <[^>]*> 0378 0026 	mttr	k1,\$24,0,2,0
[0-9a-f]+ <[^>]*> 0378 0036 	mttr	k1,\$24,0,3,0
[0-9a-f]+ <[^>]*> 0378 0046 	mttr	k1,\$24,0,4,0
[0-9a-f]+ <[^>]*> 0378 0056 	mttr	k1,\$24,0,5,0
[0-9a-f]+ <[^>]*> 0378 0066 	mttr	k1,\$24,0,6,0
[0-9a-f]+ <[^>]*> 0378 0076 	mttr	k1,\$24,0,7,0
[0-9a-f]+ <[^>]*> 0379 0006 	mttr	k1,\$25,0,0,0
[0-9a-f]+ <[^>]*> 0379 0016 	mttr	k1,\$25,0,1,0
[0-9a-f]+ <[^>]*> 0379 0026 	mttr	k1,\$25,0,2,0
[0-9a-f]+ <[^>]*> 0379 0036 	mttr	k1,\$25,0,3,0
[0-9a-f]+ <[^>]*> 0379 0046 	mttr	k1,\$25,0,4,0
[0-9a-f]+ <[^>]*> 0379 0056 	mttr	k1,\$25,0,5,0
[0-9a-f]+ <[^>]*> 0379 0066 	mttr	k1,\$25,0,6,0
[0-9a-f]+ <[^>]*> 0379 0076 	mttr	k1,\$25,0,7,0
[0-9a-f]+ <[^>]*> 037a 0006 	mttr	k1,\$26,0,0,0
[0-9a-f]+ <[^>]*> 037a 0016 	mttr	k1,\$26,0,1,0
[0-9a-f]+ <[^>]*> 037a 0026 	mttr	k1,\$26,0,2,0
[0-9a-f]+ <[^>]*> 037a 0036 	mttr	k1,\$26,0,3,0
[0-9a-f]+ <[^>]*> 037a 0046 	mttr	k1,\$26,0,4,0
[0-9a-f]+ <[^>]*> 037a 0056 	mttr	k1,\$26,0,5,0
[0-9a-f]+ <[^>]*> 037a 0066 	mttr	k1,\$26,0,6,0
[0-9a-f]+ <[^>]*> 037a 0076 	mttr	k1,\$26,0,7,0
[0-9a-f]+ <[^>]*> 037b 0006 	mttr	k1,\$27,0,0,0
[0-9a-f]+ <[^>]*> 037b 0016 	mttr	k1,\$27,0,1,0
[0-9a-f]+ <[^>]*> 037b 0026 	mttr	k1,\$27,0,2,0
[0-9a-f]+ <[^>]*> 037b 0036 	mttr	k1,\$27,0,3,0
[0-9a-f]+ <[^>]*> 037b 0046 	mttr	k1,\$27,0,4,0
[0-9a-f]+ <[^>]*> 037b 0056 	mttr	k1,\$27,0,5,0
[0-9a-f]+ <[^>]*> 037b 0066 	mttr	k1,\$27,0,6,0
[0-9a-f]+ <[^>]*> 037b 0076 	mttr	k1,\$27,0,7,0
[0-9a-f]+ <[^>]*> 037c 0006 	mttr	k1,\$28,0,0,0
[0-9a-f]+ <[^>]*> 037c 0016 	mttr	k1,\$28,0,1,0
[0-9a-f]+ <[^>]*> 037c 0026 	mttr	k1,\$28,0,2,0
[0-9a-f]+ <[^>]*> 037c 0036 	mttr	k1,\$28,0,3,0
[0-9a-f]+ <[^>]*> 037c 0046 	mttr	k1,\$28,0,4,0
[0-9a-f]+ <[^>]*> 037c 0056 	mttr	k1,\$28,0,5,0
[0-9a-f]+ <[^>]*> 037c 0066 	mttr	k1,\$28,0,6,0
[0-9a-f]+ <[^>]*> 037c 0076 	mttr	k1,\$28,0,7,0
[0-9a-f]+ <[^>]*> 037d 0006 	mttr	k1,\$29,0,0,0
[0-9a-f]+ <[^>]*> 037d 0016 	mttr	k1,\$29,0,1,0
[0-9a-f]+ <[^>]*> 037d 0026 	mttr	k1,\$29,0,2,0
[0-9a-f]+ <[^>]*> 037d 0036 	mttr	k1,\$29,0,3,0
[0-9a-f]+ <[^>]*> 037d 0046 	mttr	k1,\$29,0,4,0
[0-9a-f]+ <[^>]*> 037d 0056 	mttr	k1,\$29,0,5,0
[0-9a-f]+ <[^>]*> 037d 0066 	mttr	k1,\$29,0,6,0
[0-9a-f]+ <[^>]*> 037d 0076 	mttr	k1,\$29,0,7,0
[0-9a-f]+ <[^>]*> 037e 0006 	mttr	k1,\$30,0,0,0
[0-9a-f]+ <[^>]*> 037e 0016 	mttr	k1,\$30,0,1,0
[0-9a-f]+ <[^>]*> 037e 0026 	mttr	k1,\$30,0,2,0
[0-9a-f]+ <[^>]*> 037e 0036 	mttr	k1,\$30,0,3,0
[0-9a-f]+ <[^>]*> 037e 0046 	mttr	k1,\$30,0,4,0
[0-9a-f]+ <[^>]*> 037e 0056 	mttr	k1,\$30,0,5,0
[0-9a-f]+ <[^>]*> 037e 0066 	mttr	k1,\$30,0,6,0
[0-9a-f]+ <[^>]*> 037e 0076 	mttr	k1,\$30,0,7,0
[0-9a-f]+ <[^>]*> 037f 0006 	mttr	k1,\$31,0,0,0
[0-9a-f]+ <[^>]*> 037f 0016 	mttr	k1,\$31,0,1,0
[0-9a-f]+ <[^>]*> 037f 0026 	mttr	k1,\$31,0,2,0
[0-9a-f]+ <[^>]*> 037f 0036 	mttr	k1,\$31,0,3,0
[0-9a-f]+ <[^>]*> 037f 0046 	mttr	k1,\$31,0,4,0
[0-9a-f]+ <[^>]*> 037f 0056 	mttr	k1,\$31,0,5,0
[0-9a-f]+ <[^>]*> 037f 0066 	mttr	k1,\$31,0,6,0
[0-9a-f]+ <[^>]*> 037f 0076 	mttr	k1,\$31,0,7,0
[0-9a-f]+ <[^>]*> 039d 0406 	mttr	gp,\$29,1,0,0
[0-9a-f]+ <[^>]*> 03a0 0416 	mttr	sp,\$0,1,1,0
[0-9a-f]+ <[^>]*> 03cc 0416 	mttr	s8,\$12,1,1,0
[0-9a-f]+ <[^>]*> 03e1 0416 	mttr	ra,\$1,1,1,0
[0-9a-f]+ <[^>]*> 0001 0416 	mttr	zero,\$1,1,1,0
[0-9a-f]+ <[^>]*> 0022 0416 	mttr	at,\$2,1,1,0
[0-9a-f]+ <[^>]*> 0046 0416 	mttr	v0,\$6,1,1,0
[0-9a-f]+ <[^>]*> 0070 0416 	mttr	v1,\$16,1,1,0
[0-9a-f]+ <[^>]*> 0085 0426 	mttr	a0,\$5,1,2,0
[0-9a-f]+ <[^>]*> 00a6 0426 	mttr	a1,\$6,1,2,0
[0-9a-f]+ <[^>]*> 00c8 0626 	mttr	a2,\$8,1,2,1
[0-9a-f]+ <[^>]*> 00ea 0626 	mttr	a3,\$10,1,2,1
[0-9a-f]+ <[^>]*> 0109 0436 	mttr	t0,\$9,1,3,0
[0-9a-f]+ <[^>]*> 012a 0436 	mttr	t1,\$10,1,3,0
[0-9a-f]+ <[^>]*> 014b 0446 	mttr	t2,\$11,1,4,0
[0-9a-f]+ <[^>]*> 016c 0646 	mttr	t3,\$12,1,4,1
[0-9a-f]+ <[^>]*> 018d 0456 	mttr	t4,\$13,1,5,0
[0-9a-f]+ <[^>]*> 01cd 000e 	mftr	t5,\$14,0,0,0
[0-9a-f]+ <[^>]*> 01cd 001e 	mftr	t5,\$14,0,1,0
[0-9a-f]+ <[^>]*> 01cd 002e 	mftr	t5,\$14,0,2,0
[0-9a-f]+ <[^>]*> 01cd 003e 	mftr	t5,\$14,0,3,0
[0-9a-f]+ <[^>]*> 01cd 004e 	mftr	t5,\$14,0,4,0
[0-9a-f]+ <[^>]*> 01cd 005e 	mftr	t5,\$14,0,5,0
[0-9a-f]+ <[^>]*> 01cd 006e 	mftr	t5,\$14,0,6,0
[0-9a-f]+ <[^>]*> 01cd 007e 	mftr	t5,\$14,0,7,0
[0-9a-f]+ <[^>]*> 01cd 020e 	mftr	t5,\$14,0,0,1
[0-9a-f]+ <[^>]*> 01cd 021e 	mftr	t5,\$14,0,1,1
[0-9a-f]+ <[^>]*> 01cd 022e 	mftr	t5,\$14,0,2,1
[0-9a-f]+ <[^>]*> 01cd 023e 	mftr	t5,\$14,0,3,1
[0-9a-f]+ <[^>]*> 01cd 024e 	mftr	t5,\$14,0,4,1
[0-9a-f]+ <[^>]*> 01cd 025e 	mftr	t5,\$14,0,5,1
[0-9a-f]+ <[^>]*> 01cd 026e 	mftr	t5,\$14,0,6,1
[0-9a-f]+ <[^>]*> 01cd 027e 	mftr	t5,\$14,0,7,1
[0-9a-f]+ <[^>]*> 01cd 040e 	mftr	t5,\$14,1,0,0
[0-9a-f]+ <[^>]*> 01cd 041e 	mftr	t5,\$14,1,1,0
[0-9a-f]+ <[^>]*> 01cd 042e 	mftr	t5,\$14,1,2,0
[0-9a-f]+ <[^>]*> 01cd 043e 	mftr	t5,\$14,1,3,0
[0-9a-f]+ <[^>]*> 01cd 044e 	mftr	t5,\$14,1,4,0
[0-9a-f]+ <[^>]*> 01cd 045e 	mftr	t5,\$14,1,5,0
[0-9a-f]+ <[^>]*> 01cd 046e 	mftr	t5,\$14,1,6,0
[0-9a-f]+ <[^>]*> 01cd 047e 	mftr	t5,\$14,1,7,0
[0-9a-f]+ <[^>]*> 01cd 060e 	mftr	t5,\$14,1,0,1
[0-9a-f]+ <[^>]*> 01cd 061e 	mftr	t5,\$14,1,1,1
[0-9a-f]+ <[^>]*> 01cd 062e 	mftr	t5,\$14,1,2,1
[0-9a-f]+ <[^>]*> 01cd 063e 	mftr	t5,\$14,1,3,1
[0-9a-f]+ <[^>]*> 01cd 064e 	mftr	t5,\$14,1,4,1
[0-9a-f]+ <[^>]*> 01cd 065e 	mftr	t5,\$14,1,5,1
[0-9a-f]+ <[^>]*> 01cd 066e 	mftr	t5,\$14,1,6,1
[0-9a-f]+ <[^>]*> 01cd 067e 	mftr	t5,\$14,1,7,1
[0-9a-f]+ <[^>]*> 01ae 0006 	mttr	t5,\$14,0,0,0
[0-9a-f]+ <[^>]*> 01ae 0016 	mttr	t5,\$14,0,1,0
[0-9a-f]+ <[^>]*> 01ae 0026 	mttr	t5,\$14,0,2,0
[0-9a-f]+ <[^>]*> 01ae 0036 	mttr	t5,\$14,0,3,0
[0-9a-f]+ <[^>]*> 01ae 0046 	mttr	t5,\$14,0,4,0
[0-9a-f]+ <[^>]*> 01ae 0056 	mttr	t5,\$14,0,5,0
[0-9a-f]+ <[^>]*> 01ae 0066 	mttr	t5,\$14,0,6,0
[0-9a-f]+ <[^>]*> 01ae 0076 	mttr	t5,\$14,0,7,0
[0-9a-f]+ <[^>]*> 01ae 0206 	mttr	t5,\$14,0,0,1
[0-9a-f]+ <[^>]*> 01ae 0216 	mttr	t5,\$14,0,1,1
[0-9a-f]+ <[^>]*> 01ae 0226 	mttr	t5,\$14,0,2,1
[0-9a-f]+ <[^>]*> 01ae 0236 	mttr	t5,\$14,0,3,1
[0-9a-f]+ <[^>]*> 01ae 0246 	mttr	t5,\$14,0,4,1
[0-9a-f]+ <[^>]*> 01ae 0256 	mttr	t5,\$14,0,5,1
[0-9a-f]+ <[^>]*> 01ae 0266 	mttr	t5,\$14,0,6,1
[0-9a-f]+ <[^>]*> 01ae 0276 	mttr	t5,\$14,0,7,1
[0-9a-f]+ <[^>]*> 01ae 0406 	mttr	t5,\$14,1,0,0
[0-9a-f]+ <[^>]*> 01ae 0416 	mttr	t5,\$14,1,1,0
[0-9a-f]+ <[^>]*> 01ae 0426 	mttr	t5,\$14,1,2,0
[0-9a-f]+ <[^>]*> 01ae 0436 	mttr	t5,\$14,1,3,0
[0-9a-f]+ <[^>]*> 01ae 0446 	mttr	t5,\$14,1,4,0
[0-9a-f]+ <[^>]*> 01ae 0456 	mttr	t5,\$14,1,5,0
[0-9a-f]+ <[^>]*> 01ae 0466 	mttr	t5,\$14,1,6,0
[0-9a-f]+ <[^>]*> 01ae 0476 	mttr	t5,\$14,1,7,0
[0-9a-f]+ <[^>]*> 01ae 0606 	mttr	t5,\$14,1,0,1
[0-9a-f]+ <[^>]*> 01ae 0616 	mttr	t5,\$14,1,1,1
[0-9a-f]+ <[^>]*> 01ae 0626 	mttr	t5,\$14,1,2,1
[0-9a-f]+ <[^>]*> 01ae 0636 	mttr	t5,\$14,1,3,1
[0-9a-f]+ <[^>]*> 01ae 0646 	mttr	t5,\$14,1,4,1
[0-9a-f]+ <[^>]*> 01ae 0656 	mttr	t5,\$14,1,5,1
[0-9a-f]+ <[^>]*> 01ae 0666 	mttr	t5,\$14,1,6,1
[0-9a-f]+ <[^>]*> 01ae 0676 	mttr	t5,\$14,1,7,1
[0-9a-f]+ <[^>]*> 0000 2800 	sll	zero,zero,0x5
	\.\.\.
