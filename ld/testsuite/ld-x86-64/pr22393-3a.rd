#source: pr22393-1.s
#ld: -shared -z separate-code --no-rosegment
#readelf: -l --wide
#target: *-*-linux-gnu *-*-gnu*

#failif
#...
 +[0-9]+  +.*(\.note|\.gnu|\.hash|\.dyn|\.rel).*\.text.*
#...
