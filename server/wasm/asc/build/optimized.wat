(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (import "console" "log" (func $assembly/console/log (param i32)))
 (global $assembly/index/Int32Array_ID i32 (i32.const 3))
 (global $assembly/index/ArrayInt32Arrays_ID i32 (i32.const 4))
 (global $assembly/index/ArrayOfStrings_ID i32 (i32.const 5))
 (global $assembly/index/Array2DStrings_ID i32 (i32.const 6))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 5568))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 22052))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1340) "<")
 (data (i32.const 1352) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1404) ",")
 (data (i32.const 1416) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1484) "<")
 (data (i32.const 1496) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1548) ",")
 (data (i32.const 1560) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1596) "|")
 (data (i32.const 1608) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 1724) "<")
 (data (i32.const 1736) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1788) "\1c")
 (data (i32.const 1820) "\1c")
 (data (i32.const 1852) ",")
 (data (i32.const 1864) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 1900) "\1c")
 (data (i32.const 1912) "\01")
 (data (i32.const 1932) "\1c")
 (data (i32.const 1944) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 1964) ",")
 (data (i32.const 1976) "\t\00\00\00\1c\00\00\00\80\07\00\00\00\00\00\00\a0\07\00\00\00\00\00\00\a0\07\00\00\00\00\00\00\80\07")
 (data (i32.const 2012) "|")
 (data (i32.const 2024) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 2140) "<")
 (data (i32.const 2152) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 2204) "\1c")
 (data (i32.const 2216) "\01\00\00\00\02\00\00\000")
 (data (i32.const 2236) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2636) "\1c\04")
 (data (i32.const 2648) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 3692) "\\")
 (data (i32.const 3704) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3788) "\1c")
 (data (i32.const 3800) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 3820) "\1c")
 (data (i32.const 3832) "\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 3852) ",")
 (data (i32.const 3864) "\01\00\00\00\1a\00\00\00 \00g\00e\00t\00 \00n\00e\00i\00g\00h\00s\00:\00 ")
 (data (i32.const 3900) ",")
 (data (i32.const 3912) "\t\00\00\00\1c\00\00\00\80\07\00\00\00\00\00\00\a0\07\00\00\00\00\00\00 \0f\00\00\00\00\00\00\80\07")
 (data (i32.const 3948) "<")
 (data (i32.const 3960) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 4012) "\1c")
 (data (i32.const 4024) "\01\00\00\00\n\00\00\00*\00*\00\n\00*\00*")
 (data (i32.const 4044) "\1c")
 (data (i32.const 4056) "\01\00\00\00\08\00\00\00*\00-\00-\00-")
 (data (i32.const 4076) ",")
 (data (i32.const 4088) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4124) "\1c")
 (data (i32.const 4136) "\01\00\00\00\02\00\00\00*")
 (data (i32.const 4156) "\1c")
 (data (i32.const 4168) "\01\00\00\00\04\00\00\00\n\00|")
 (data (i32.const 4188) "\1c")
 (data (i32.const 4200) "\01\00\00\00\08\00\00\00 \00 \00 \00 ")
 (data (i32.const 4220) "\1c")
 (data (i32.const 4232) "\01\00\00\00\08\00\00\00 \00 \00 \00*")
 (data (i32.const 4252) "\1c")
 (data (i32.const 4264) "\01\00\00\00\08\00\00\00-\00-\00-\00*")
 (data (i32.const 4284) "\1c")
 (data (i32.const 4296) "\01\00\00\00\08\00\00\00 \00 \00 \00|")
 (data (i32.const 4316) "\1c")
 (data (i32.const 4328) "\01\00\00\00\06\00\00\00 \00 \00 ")
 (data (i32.const 4348) "\1c")
 (data (i32.const 4360) "\01\00\00\00\04\00\00\00|\00\n")
 (data (i32.const 4380) ",")
 (data (i32.const 4392) "\t\00\00\00\14\00\00\00\80\07\00\00\00\00\00\00\10\11\00\00\00\00\00\00\80\07")
 (data (i32.const 4428) ",")
 (data (i32.const 4440) "\01\00\00\00\12\00\00\00n\00o\00 \00h\00e\00i\00g\00h\00t")
 (data (i32.const 4476) "\1c")
 (data (i32.const 4492) "\04\00\00\00`\11")
 (data (i32.const 4508) ",")
 (data (i32.const 4520) "\01\00\00\00\10\00\00\00n\00o\00 \00w\00i\00d\00t\00h")
 (data (i32.const 4556) "\1c")
 (data (i32.const 4572) "\04\00\00\00\b0\11")
 (data (i32.const 4588) "\1c")
 (data (i32.const 4600) "\01\00\00\00\08\00\00\00c\00e\00l\00l")
 (data (i32.const 4620) "\1c")
 (data (i32.const 4632) "\n\00\00\00\08\00\00\00\01")
 (data (i32.const 4652) "\1c")
 (data (i32.const 4664) "\0b\00\00\00\08\00\00\00\02")
 (data (i32.const 4684) ",")
 (data (i32.const 4696) "\01\00\00\00\18\00\00\00c\00e\00l\00l\00 \00v\00i\00s\00i\00t\00e\00d")
 (data (i32.const 4732) ",")
 (data (i32.const 4744) "\01\00\00\00\12\00\00\00 \00w\00a\00l\00l\00-\00t\00o\00p")
 (data (i32.const 4780) ",")
 (data (i32.const 4792) "\01\00\00\00\18\00\00\00 \00w\00a\00l\00l\00-\00b\00o\00t\00t\00o\00m")
 (data (i32.const 4828) ",")
 (data (i32.const 4840) "\01\00\00\00\14\00\00\00 \00w\00a\00l\00l\00-\00l\00e\00f\00t")
 (data (i32.const 4876) ",")
 (data (i32.const 4888) "\01\00\00\00\16\00\00\00 \00w\00a\00l\00l\00-\00r\00i\00g\00h\00t")
 (data (i32.const 4924) "\1c")
 (data (i32.const 4936) "\01\00\00\00\06\00\00\00t\00o\00p")
 (data (i32.const 4956) "\1c")
 (data (i32.const 4968) "\01\00\00\00\n\00\00\00r\00i\00g\00h\00t")
 (data (i32.const 4988) "\1c")
 (data (i32.const 5000) "\01\00\00\00\0c\00\00\00b\00o\00t\00t\00o\00m")
 (data (i32.const 5020) "\1c")
 (data (i32.const 5032) "\01\00\00\00\08\00\00\00l\00e\00f\00t")
 (data (i32.const 5052) ",")
 (data (i32.const 5068) "\10\00\00\00P\13\00\00p\13\00\00\90\13\00\00\b0\13")
 (data (i32.const 5100) "\1c")
 (data (i32.const 5132) "\1c")
 (data (i32.const 5144) "\01\00\00\00\n\00\00\00w\00a\00l\00l\00-")
 (data (i32.const 5164) ",")
 (data (i32.const 5176) "\01\00\00\00\1a\00\00\00c\00e\00l\00l\00 \00v\00i\00s\00i\00t\00e\00d\00 ")
 (data (i32.const 5212) ",")
 (data (i32.const 5224) "\t\00\00\00\1c\00\00\00@\14\00\00\00\00\00\00\80\07\00\00\00\00\00\00\80\07\00\00\00\00\00\00\80\07")
 (data (i32.const 5260) ",")
 (data (i32.const 5272) "\01\00\00\00\10\00\00\00 \00c\00u\00r\00r\00e\00n\00t")
 (data (i32.const 5308) "\1c")
 (data (i32.const 5320) "\01\00\00\00\0c\00\00\00 \00s\00t\00u\00c\00k")
 (data (i32.const 5340) ",")
 (data (i32.const 5352) "\01\00\00\00\16\00\00\00g\00r\00i\00d\00[\00y\00]\00[\00x\00]\00 ")
 (data (i32.const 5388) ",")
 (data (i32.const 5400) "\t\00\00\00\14\00\00\00\f0\14\00\00\00\00\00\00\80\07\00\00\00\00\00\00\80\07")
 (data (i32.const 5436) "<")
 (data (i32.const 5448) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 5500) "<")
 (data (i32.const 5512) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 5568) "\0c\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 5596) "\01\t\00\00\02\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\04A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\04A")
 (table $0 3 funcref)
 (elem $0 (i32.const 1) $assembly/utilsFn/generateClassLists~anonymous|0~anonymous|0 $assembly/utilsFn/generateClassLists~anonymous|0)
 (export "Int32Array_ID" (global $assembly/index/Int32Array_ID))
 (export "ArrayInt32Arrays_ID" (global $assembly/index/ArrayInt32Arrays_ID))
 (export "ArrayOfStrings_ID" (global $assembly/index/ArrayOfStrings_ID))
 (export "Array2DStrings_ID" (global $assembly/index/Array2DStrings_ID))
 (export "getTextMaze" (func $assembly/index/getTextMaze))
 (export "getMazeDescriptor" (func $assembly/index/getMazeDescriptor))
 (export "getX" (func $assembly/mazeFn/getX))
 (export "getY" (func $assembly/mazeFn/getY))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "generateClasses" (func $export:assembly/index/generateClasses))
 (export "updateClasses" (func $export:assembly/index/updateClasses))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1360
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 1872
  call $~lib/rt/itcms/__visit
  i32.const 1616
  call $~lib/rt/itcms/__visit
  i32.const 1168
  call $~lib/rt/itcms/__visit
  i32.const 5456
  call $~lib/rt/itcms/__visit
  i32.const 5520
  call $~lib/rt/itcms/__visit
  i32.const 2656
  call $~lib/rt/itcms/__visit
  i32.const 3712
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    drop
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=8
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    drop
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $1
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   i32.const 5568
   i32.load
   local.get $1
   i32.lt_u
   if
    i32.const 1360
    i32.const 1424
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.shl
   i32.const 5572
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  local.get $2
  local.get $3
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.set $3
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $2
   i32.store offset=8
  end
  local.get $2
  if
   local.get $2
   local.get $5
   i32.store offset=4
  end
  local.get $4
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $4
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $2
   i32.store offset=96
   local.get $2
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const -2
    local.get $4
    i32.rotl
    i32.and
    local.set $1
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.load
  local.tee $4
  local.set $3
  local.get $1
  i32.const 4
  i32.add
  local.get $4
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.set $6
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $3
   i32.const 1073741820
   local.get $3
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $5
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 22064
  i32.const 0
  i32.store
  i32.const 23632
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 22064
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 22064
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 22064
  i32.const 23636
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 22064
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  block $folding-inner0
   block $break|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/rt/itcms/state
       br_table $case0|0 $case1|0 $case2|0 $break|0
      end
      i32.const 1
      global.set $~lib/rt/itcms/state
      i32.const 0
      global.set $~lib/rt/itcms/visitCount
      call $~lib/rt/itcms/visitRoots
      global.get $~lib/rt/itcms/toSpace
      global.set $~lib/rt/itcms/iter
      br $folding-inner0
     end
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.set $1
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|1
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       global.set $~lib/rt/itcms/iter
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        i32.or
        i32.store offset=4
        i32.const 0
        global.set $~lib/rt/itcms/visitCount
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
        br $folding-inner0
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|1
      end
     end
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.set $0
      loop $while-continue|0
       local.get $0
       i32.const 22052
       i32.lt_u
       if
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      global.get $~lib/rt/itcms/iter
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      loop $while-continue|2
       global.get $~lib/rt/itcms/toSpace
       local.get $0
       i32.ne
       if
        local.get $0
        i32.load offset=4
        i32.const 3
        i32.and
        local.get $1
        i32.ne
        if
         local.get $0
         local.get $1
         local.get $0
         i32.load offset=4
         i32.const -4
         i32.and
         i32.or
         i32.store offset=4
         local.get $0
         i32.const 20
         i32.add
         call $~lib/rt/__visit_members
        end
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        local.set $0
        br $while-continue|2
       end
      end
      global.get $~lib/rt/itcms/fromSpace
      local.set $0
      global.get $~lib/rt/itcms/toSpace
      global.set $~lib/rt/itcms/fromSpace
      local.get $0
      global.set $~lib/rt/itcms/toSpace
      local.get $1
      global.set $~lib/rt/itcms/white
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      global.set $~lib/rt/itcms/iter
      i32.const 2
      global.set $~lib/rt/itcms/state
     end
     br $folding-inner0
    end
    global.get $~lib/rt/itcms/iter
    local.tee $0
    global.get $~lib/rt/itcms/toSpace
    i32.ne
    if
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     local.get $0
     i32.const 22052
     i32.lt_u
     if
      local.get $0
      i32.const 0
      i32.store offset=4
      local.get $0
      i32.const 0
      i32.store offset=8
     else
      global.get $~lib/rt/itcms/total
      local.get $0
      i32.load
      i32.const -4
      i32.and
      i32.const 4
      i32.add
      i32.sub
      global.set $~lib/rt/itcms/total
      local.get $0
      i32.const 4
      i32.add
      local.tee $0
      i32.const 22052
      i32.ge_u
      if
       global.get $~lib/rt/tlsf/ROOT
       i32.eqz
       if
        call $~lib/rt/tlsf/initialize
       end
       local.get $0
       i32.const 4
       i32.sub
       local.set $1
       local.get $0
       i32.const 15
       i32.and
       i32.const 1
       local.get $0
       select
       i32.eqz
       if
        local.get $1
        i32.load
        drop
       end
       local.get $1
       local.tee $0
       local.get $0
       i32.load
       i32.const 1
       i32.or
       i32.store
       global.get $~lib/rt/tlsf/ROOT
       local.get $0
       call $~lib/rt/tlsf/insertBlock
      end
     end
     i32.const 10
     return
    end
    global.get $~lib/rt/itcms/toSpace
    local.tee $0
    local.tee $1
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $0
    i32.store offset=8
    i32.const 0
    global.set $~lib/rt/itcms/state
   end
   i32.const 0
   return
  end
  global.get $~lib/rt/itcms/visitCount
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    local.get $1
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   local.tee $1
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $3
    loop $do-loop|0
     local.get $3
     call $~lib/rt/itcms/step
     i32.sub
     local.set $3
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $3
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $3
    local.get $3
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $3
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.tee $5
  local.set $2
  local.get $3
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1168
   i32.const 1504
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $3
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $3
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $4
   local.get $3
   i32.const 536870910
   i32.lt_u
   if (result i32)
    i32.const 1
    i32.const 27
    local.get $3
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    local.get $3
    i32.add
   else
    local.get $3
   end
   i32.const 4
   local.get $5
   i32.load offset=1568
   local.get $4
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $4
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $5
   local.get $4
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $5
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.set $2
  end
  local.get $2
  i32.load
  drop
  local.get $5
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.tee $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $4
   i32.const 2
   i32.and
   local.get $3
   i32.or
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $5
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    i32.const 0
    local.get $3
    i32.const 3
    i32.eq
    select
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    local.get $3
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      local.get $1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $4
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $4
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $4
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    local.get $3
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $4
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $4
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.tee $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $3
   i32.const 2
   i32.add
   local.set $1
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $4
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.tee $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.tee $0
   i32.const 2
   i32.add
   local.set $3
   local.get $4
   local.get $0
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $1
   local.get $3
   i32.load8_u
   i32.store8
   local.get $1
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $3
   i32.const 2
   i32.add
   local.set $1
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $4
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.const 2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1568
    i32.const 18
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/rt/itcms/__renew (result i32)
    local.get $4
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 1073741820
    local.get $2
    i32.const 1073741820
    i32.lt_u
    select
    local.tee $2
    local.get $1
    i32.const 8
    local.get $1
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.tee $1
    local.tee $2
    local.get $0
    i32.load
    local.tee $6
    local.tee $5
    i32.const 20
    i32.sub
    local.tee $3
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $3
     local.get $2
     i32.store offset=16
     local.get $5
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $2
    local.get $3
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $7
    local.get $5
    local.get $2
    local.get $3
    i32.load offset=16
    local.tee $3
    local.get $2
    local.get $3
    i32.lt_u
    select
    call $~lib/memory/memory.copy
    local.get $7
   end
   local.tee $2
   local.get $4
   i32.add
   local.get $1
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $6
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1360
    i32.const 1568
    i32.const 123
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
 )
 (func $~lib/typedarray/Int32Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.get $1
  i32.le_u
  if
   i32.const 1360
   i32.const 1744
   i32.const 741
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/typedarray/Int32Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.get $1
  i32.le_u
  if
   i32.const 1360
   i32.const 1744
   i32.const 730
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $assembly/utilsFn/getRand (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i64.const -7046029254386353131
   call $~lib/builtins/seed
   i64.reinterpret_f64
   local.tee $2
   local.get $2
   i64.eqz
   select
   local.tee $2
   local.get $2
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   global.set $~lib/math/random_state1_64
   i32.const 1
   global.set $~lib/math/random_seeded
  end
  global.get $~lib/math/random_state0_64
  local.set $1
  global.get $~lib/math/random_state1_64
  local.tee $2
  global.set $~lib/math/random_state0_64
  local.get $2
  local.get $1
  i64.const 23
  i64.shl
  local.get $1
  i64.xor
  local.tee $1
  local.get $1
  i64.const 17
  i64.shr_u
  i64.xor
  i64.xor
  local.get $2
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $2
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const 1
  f64.sub
  local.get $0
  f64.convert_i32_s
  f64.mul
  f32.demote_f64
  f64.promote_f32
  f64.floor
  i32.trunc_f64_s
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $assembly/mazeFn/getX (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shr_s
 )
 (func $assembly/mazeFn/getY (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shr_s
  i32.const 255
  i32.and
 )
 (func $assembly/utilsFn/generateClassLists~anonymous|0~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 4608
 )
 (func $assembly/index/getMazeDescriptor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $assembly/rbtFn/RecursiveBacktracker
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 5456
    i32.const 1232
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $2
    i32.eqz
    if
     local.get $1
     i32.load offset=8
     drop
     br $__inlined_func$~lib/rt/itcms/Object#unlink
    end
    local.get $2
    local.get $1
    i32.load offset=8
    local.tee $3
    i32.store offset=8
    local.get $3
    local.get $3
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $2
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 5520
   i32.const 1232
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
  else
   block $__inlined_func$~lib/rt/itcms/Object#unlink
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $1
    i32.eqz
    if
     local.get $0
     i32.load offset=8
     drop
     br $__inlined_func$~lib/rt/itcms/Object#unlink
    end
    local.get $1
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.store offset=8
    local.get $2
    local.get $2
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $1
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/fromSpace
   local.tee $2
   i32.load offset=8
   local.set $1
   local.get $0
   global.get $~lib/rt/itcms/white
   local.get $2
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $1
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $0
   i32.or
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.get $0
  i32.add
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $0
    i32.load
    local.tee $2
    if
     local.get $2
     call $~lib/rt/itcms/__visit
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%2Ci32%2C~lib/array/Array<~lib/array/Array<~lib/string/String>>%29=>~lib/array/Array<~lib/string/String>>
      block $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/string/String>
       block $~lib/staticarray/StaticArray<~lib/string/String>
        block $~lib/array/Array<i32>
         block $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>
          block $~lib/string/String
           block $~lib/arraybuffer/ArrayBuffer
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner1 $folding-inner1 $folding-inner0 $folding-inner0 $folding-inner0 $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>> $~lib/array/Array<i32> $~lib/staticarray/StaticArray<~lib/string/String> $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>~lib/string/String> $~lib/function/Function<%28~lib/array/Array<~lib/string/String>%2Ci32%2C~lib/array/Array<~lib/array/Array<~lib/string/String>>%29=>~lib/array/Array<~lib/string/String>> $invalid
           end
           return
          end
          return
         end
         local.get $0
         call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>~visit
         return
        end
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
        return
       end
       local.get $0
       call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>~visit
       return
      end
      local.get $0
      i32.load offset=4
      call $~lib/rt/itcms/__visit
      return
     end
     local.get $0
     i32.load offset=4
     call $~lib/rt/itcms/__visit
     return
    end
    unreachable
   end
   local.get $0
   local.tee $1
   i32.load offset=4
   local.tee $2
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.shl
   i32.add
   local.set $3
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $2
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/rt/itcms/__visit
     end
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   local.get $1
   i32.load
   call $~lib/rt/itcms/__visit
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  i32.const 22052
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1284
  i32.const 1280
  i32.store
  i32.const 1288
  i32.const 1280
  i32.store
  i32.const 1280
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1316
  i32.const 1312
  i32.store
  i32.const 1320
  i32.const 1312
  i32.store
  i32.const 1312
  global.set $~lib/rt/itcms/toSpace
  i32.const 1460
  i32.const 1456
  i32.store
  i32.const 1464
  i32.const 1456
  i32.store
  i32.const 1456
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $assembly/mazeFn/initGrid (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.tee $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $2
   i32.const 0
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 0
   i32.store offset=12
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1568
    i32.const 65
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.tee $6
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store offset=4
   local.get $4
   local.get $6
   call $~lib/memory/memory.fill
   local.get $2
   local.get $4
   i32.store
   local.get $2
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $2
   local.get $4
   i32.store offset=4
   local.get $2
   local.get $6
   i32.store offset=8
   local.get $2
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store
   loop $for-loop|0
    local.get $1
    local.get $5
    i32.gt_s
    if
     local.get $0
     call $~lib/typedarray/Int32Array#constructor
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $2
     local.get $5
     local.get $3
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
     i32.const 0
     local.set $3
     loop $for-loop|1
      local.get $0
      local.get $3
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 5668
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       i32.const 0
       i32.store
       local.get $4
       local.get $2
       local.get $5
       call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
       local.tee $4
       i32.store
       local.get $4
       local.get $3
       local.get $3
       i32.const 24
       i32.shl
       local.get $5
       i32.const 16
       i32.shl
       i32.add
       call $~lib/typedarray/Int32Array#__set
       local.get $4
       local.get $3
       call $~lib/typedarray/Int32Array#__get
       drop
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 22080
  i32.const 22128
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/mazeFn/setVisited (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $3
  local.get $1
  local.get $4
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  i32.const 256
  i32.or
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/mazeFn/isVisited (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  local.get $3
  i64.const 0
  i64.store offset=16
  local.get $3
  local.get $1
  i32.const 10
  call $~lib/util/number/itoa32
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 10
  call $~lib/util/number/itoa32
  local.tee $5
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  i32.const 3808
  i32.const 3840
  local.get $4
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  i32.const 256
  i32.and
  select
  local.tee $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 1984
  i32.store offset=12
  i32.const 1988
  local.get $3
  i32.store
  i32.const 1984
  local.get $3
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 1984
  i32.store offset=12
  i32.const 1996
  local.get $5
  i32.store
  i32.const 1984
  local.get $5
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 1984
  i32.store offset=12
  i32.const 2004
  local.get $4
  i32.store
  i32.const 1984
  local.get $4
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 1984
  i32.store offset=12
  local.get $3
  i32.const 1920
  i32.store offset=20
  i32.const 1984
  i32.const 1980
  i32.load
  i32.const 2
  i32.shr_u
  i32.const 1920
  call $~lib/util/string/joinStringArray
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assembly/console/log
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  i32.const 256
  i32.and
  i32.eqz
  i32.eqz
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/mazeFn/getNeighbors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  local.get $3
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.tee $3
  i32.const 1
  i32.and
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.const 240
   i32.and
   i32.const 4
   i32.shr_u
   return
  end
  local.get $2
  i32.const 0
  i32.gt_s
  if (result i32)
   local.get $0
   local.get $1
   local.get $2
   i32.const 1
   i32.sub
   call $assembly/mazeFn/isVisited
  else
   i32.const 1
  end
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  i32.const 0
  i32.const 8
  local.get $3
  select
  local.tee $3
  local.get $3
  i32.const 4
  i32.or
  local.get $1
  i32.const 1
  i32.add
  local.get $4
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.get $2
   call $assembly/mazeFn/isVisited
  else
   i32.const 1
  end
  select
  local.tee $3
  local.get $3
  i32.const 2
  i32.or
  local.get $0
  i32.load offset=12
  local.get $2
  i32.const 1
  i32.add
  i32.gt_s
  if (result i32)
   local.get $0
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   call $assembly/mazeFn/isVisited
  else
   i32.const 1
  end
  select
  local.tee $3
  local.set $5
  local.get $3
  i32.const 1
  i32.or
  local.set $6
  local.get $1
  i32.const 0
  i32.gt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   call $assembly/mazeFn/isVisited
  else
   i32.const 1
  end
  local.set $3
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $4
  local.get $1
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.get $5
  local.get $6
  local.get $3
  select
  local.tee $0
  i32.const 4
  i32.shl
  i32.const 1
  i32.add
  i32.or
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 10
  call $~lib/util/number/itoa32
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 10
  call $~lib/util/number/itoa32
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 2
  call $~lib/util/number/itoa32
  local.tee $3
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 3920
  i32.store offset=4
  i32.const 3924
  local.get $1
  i32.store
  i32.const 3920
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 3920
  i32.store offset=4
  i32.const 3932
  local.get $2
  i32.store
  i32.const 3920
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 3920
  i32.store offset=4
  i32.const 3940
  local.get $3
  i32.store
  i32.const 3920
  local.get $3
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 3920
  i32.store offset=4
  local.get $1
  i32.const 1920
  i32.store offset=20
  i32.const 3920
  i32.const 3916
  i32.load
  i32.const 2
  i32.shr_u
  i32.const 1920
  call $~lib/util/string/joinStringArray
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/console/log
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/mazeFn/removeNeighbor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $3
        br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0
       end
       local.get $0
       local.get $2
       call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       local.get $0
       local.get $2
       call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=4
       local.get $3
       local.get $1
       local.get $4
       local.get $1
       call $~lib/typedarray/Int32Array#__get
       i32.const -129
       i32.and
       call $~lib/typedarray/Int32Array#__set
       br $break|0
      end
      local.get $0
      local.get $2
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $0
      local.get $2
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=4
      local.get $3
      local.get $1
      local.get $4
      local.get $1
      call $~lib/typedarray/Int32Array#__get
      i32.const -65
      i32.and
      call $~lib/typedarray/Int32Array#__set
      br $break|0
     end
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $3
     local.get $1
     local.get $4
     local.get $1
     call $~lib/typedarray/Int32Array#__get
     i32.const -33
     i32.and
     call $~lib/typedarray/Int32Array#__set
     br $break|0
    end
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $3
    local.get $1
    local.get $4
    local.get $1
    call $~lib/typedarray/Int32Array#__get
    i32.const -17
    i32.and
    call $~lib/typedarray/Int32Array#__set
    br $break|0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/mazeFn/getNext (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $folding-inner2
   block $folding-inner1 (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 5668
    i32.lt_s
    if
     i32.const 22080
     i32.const 22128
     i32.const 1
     i32.const 1
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    local.get $0
    local.get $1
    i32.const 24
    i32.shr_s
    local.tee $4
    local.get $1
    i32.const 16
    i32.shr_s
    i32.const 255
    i32.and
    local.tee $3
    call $assembly/mazeFn/getNeighbors
    local.tee $2
    i32.const -1
    i32.eq
    if (result i32)
     i32.const -1
    else
     local.get $2
     local.set $1
     loop $for-loop|0
      local.get $5
      i32.const 4
      i32.lt_s
      if
       i32.const 1
       i32.const 3
       local.get $5
       i32.sub
       i32.shl
       local.get $2
       i32.and
       if
        block $break|1
         block $case3|1
          block $case2|1
           block $case1|1
            block $case0|1
             local.get $5
             br_table $case0|1 $case1|1 $case2|1 $case3|1 $break|1
            end
            local.get $1
            i32.const 247
            i32.and
            local.get $1
            local.get $0
            local.get $4
            local.get $3
            i32.const 1
            i32.sub
            call $assembly/mazeFn/isVisited
            select
            local.set $1
            br $break|1
           end
           local.get $1
           i32.const 250
           i32.and
           local.get $1
           local.get $0
           local.get $4
           i32.const 1
           i32.add
           local.get $3
           call $assembly/mazeFn/isVisited
           select
           local.set $1
           br $break|1
          end
          local.get $1
          i32.const 253
          i32.and
          local.get $1
          local.get $0
          local.get $4
          local.get $3
          i32.const 1
          i32.add
          call $assembly/mazeFn/isVisited
          select
          local.set $1
          br $break|1
         end
         local.get $1
         i32.const 254
         i32.and
         local.get $1
         local.get $0
         local.get $4
         i32.const 1
         i32.sub
         local.get $3
         call $assembly/mazeFn/isVisited
         select
         local.set $1
        end
       end
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $for-loop|0
      end
     end
     local.get $1
    end
    local.tee $5
    i32.const -1
    i32.eq
    br_if $folding-inner2
    i32.const 0
    local.set $2
    i32.const 0
    local.set $1
    loop $for-loop|00
     local.get $2
     i32.const 4
     i32.lt_s
     if
      local.get $1
      i32.const 1
      i32.add
      local.get $1
      i32.const 1
      local.get $2
      i32.shl
      local.get $5
      i32.and
      select
      local.set $1
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|00
     end
    end
    local.get $1
    call $assembly/utilsFn/getRand
    local.set $2
    i32.const -1
    local.set $1
    loop $for-loop|01
     local.get $6
     i32.const 4
     i32.lt_s
     if
      block $for-break0
       i32.const 1
       i32.const 3
       local.get $6
       i32.sub
       i32.shl
       local.get $5
       i32.and
       if
        local.get $1
        i32.const 1
        i32.add
        local.tee $1
        local.get $2
        i32.eq
        br_if $for-break0
       end
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $for-loop|01
      end
     end
    end
    block $folding-inner0
     block $case3|12
      block $case2|13
       block $case1|14
        block $case0|15
         local.get $6
         br_table $case0|15 $case1|14 $case2|13 $case3|12 $folding-inner2
        end
        local.get $0
        local.get $4
        local.get $3
        i32.const 1
        i32.sub
        local.tee $1
        call $assembly/mazeFn/setVisited
        drop
        local.get $0
        local.get $4
        local.get $3
        i32.const 0
        call $assembly/mazeFn/removeNeighbor
        br $folding-inner0
       end
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       local.tee $1
       local.get $3
       call $assembly/mazeFn/setVisited
       drop
       local.get $0
       local.get $4
       local.get $3
       i32.const 1
       call $assembly/mazeFn/removeNeighbor
       local.get $0
       local.get $3
       call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
       local.set $0
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $1
       call $~lib/typedarray/Int32Array#__get
       br $folding-inner1
      end
      local.get $0
      local.get $4
      local.get $3
      i32.const 1
      i32.add
      local.tee $1
      call $assembly/mazeFn/setVisited
      drop
      local.get $0
      local.get $4
      local.get $3
      i32.const 2
      call $assembly/mazeFn/removeNeighbor
      br $folding-inner0
     end
     local.get $0
     local.get $4
     i32.const 1
     i32.sub
     local.tee $1
     local.get $3
     call $assembly/mazeFn/setVisited
     drop
     local.get $0
     local.get $4
     local.get $3
     i32.const 3
     call $assembly/mazeFn/removeNeighbor
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/typedarray/Int32Array#__get
     br $folding-inner1
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/typedarray/Int32Array#__get
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const -1
 )
 (func $assembly/utilsFn/printMaze (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i64.const 0
  i64.store offset=16
  local.get $2
  i64.const 0
  i64.store offset=24
  block $folding-inner0
   local.get $0
   i32.load offset=12
   local.tee $8
   i32.const 0
   i32.le_s
   br_if $folding-inner0
   local.get $0
   i32.const 0
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $5
   local.get $8
   i32.const 0
   i32.le_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 4064
   i32.store offset=8
   i32.const 4064
   local.get $5
   call $~lib/string/String#repeat
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4144
   i32.store offset=4
   local.get $3
   local.get $2
   i32.const 4144
   call $~lib/string/String#concat
   local.tee $9
   i32.store offset=12
   loop $for-loop|0
    local.get $4
    local.get $8
    i32.lt_s
    if
     i32.const 4176
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 4176
     i32.store offset=16
     i32.const 4144
     local.set $7
     local.get $2
     i32.const 4144
     i32.store offset=20
     i32.const 0
     local.set $3
     loop $for-loop|1
      local.get $3
      local.get $5
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       i32.const 4208
       i32.store offset=24
       local.get $2
       i32.const 4240
       i32.store offset=28
       local.get $0
       local.get $3
       local.get $4
       call $assembly/mazeFn/getNeighbors
       local.tee $2
       i32.const 2
       i32.and
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        i32.const 4272
        i32.store offset=28
        i32.const 4272
       else
        i32.const 4240
       end
       local.set $1
       local.get $2
       i32.const 4
       i32.and
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        i32.const 4304
        i32.store offset=24
        i32.const 4304
       else
        i32.const 4208
       end
       local.set $2
       local.get $8
       local.get $4
       i32.const 1
       i32.add
       i32.gt_s
       if
        local.get $0
        local.get $3
        local.get $4
        i32.const 1
        i32.add
        call $assembly/mazeFn/getNeighbors
        i32.const 8
        i32.and
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 4272
         i32.store offset=28
         i32.const 4272
         local.set $1
        end
        global.get $~lib/memory/__stack_pointer
        local.get $7
        local.get $1
        call $~lib/string/String#concat
        local.tee $7
        i32.store offset=20
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.add
       i32.gt_s
       if (result i32)
        local.get $0
        local.get $3
        i32.const 1
        i32.add
        local.get $4
        call $assembly/mazeFn/getNeighbors
        i32.const 1
        i32.and
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         i32.const 4304
         i32.store offset=24
         i32.const 4304
        else
         local.get $2
        end
       else
        global.get $~lib/memory/__stack_pointer
        i32.const 4336
        i32.store offset=24
        i32.const 4336
       end
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $6
       local.get $2
       call $~lib/string/String#concat
       local.tee $6
       i32.store offset=16
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 4400
     i32.store offset=4
     i32.const 4404
     local.get $6
     i32.store
     i32.const 4400
     local.get $6
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 4400
     i32.store offset=4
     i32.const 4412
     local.get $7
     i32.store
     i32.const 4400
     local.get $7
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 4400
     i32.store offset=4
     local.get $2
     i32.const 1920
     i32.store offset=8
     i32.const 4400
     i32.const 4396
     i32.load
     i32.const 2
     i32.shr_u
     i32.const 1920
     call $~lib/util/string/joinStringArray
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $3
     local.get $9
     local.get $2
     call $~lib/string/String#concat
     local.tee $9
     i32.store offset=12
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 4272
   i32.store offset=4
   i32.const 4272
   local.get $5
   call $~lib/string/String#repeat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $2
   local.get $9
   local.get $0
   call $~lib/string/String#concat
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 4032
 )
 (func $assembly/index/getTextMaze (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $0
   local.get $1
   call $assembly/rbtFn/RecursiveBacktracker
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 2
   i32.le_u
   if
    i32.const 1360
    i32.const 3968
    i32.const 115
    i32.const 41
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 1616
    i32.const 3968
    i32.const 119
    i32.const 40
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $assembly/utilsFn/printMaze
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 22080
  i32.const 22128
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/utilsFn/generateClassLists~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 4640
   i32.store
   i32.const 0
   local.set $2
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.load offset=12
   local.tee $4
   i32.const 5
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=4
   local.set $5
   loop $for-loop|0
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
    select
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $2
     i32.const 2
     i32.shl
     local.tee $6
     local.get $0
     i32.load offset=4
     i32.add
     i32.load
     local.tee $7
     i32.store offset=4
     local.get $3
     local.get $7
     local.get $2
     local.get $0
     i32.const 4640
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     local.tee $3
     i32.store offset=8
     local.get $5
     local.get $6
     i32.add
     local.get $3
     i32.store
     local.get $1
     local.get $3
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 22080
  i32.const 22128
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/utilsFn/generateClassLists (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $2
   i64.const 0
   i64.store offset=16
   local.get $0
   i32.load offset=12
   local.set $5
   local.get $0
   i32.const 0
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $7
   block $folding-inner0
    local.get $5
    i32.const 0
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     i32.store offset=8
     local.get $0
     i32.const 0
     i32.const 1
     i32.const 5
     i32.const 4496
     call $~lib/rt/__newArray
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
     br $folding-inner0
    end
    local.get $7
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.const 1
     i32.const 5
     i32.const 4576
     call $~lib/rt/__newArray
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
     br $folding-inner0
    end
    local.get $0
    i32.const 0
    i32.const 0
    call $assembly/mazeFn/isVisited
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $2
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 5668
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store
    local.get $2
    i32.const 16
    i32.const 6
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    local.get $2
    i32.const 0
    i32.store
    local.get $2
    i32.const 0
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $2
    i32.const 0
    i32.store offset=4
    local.get $2
    i32.const 0
    i32.store offset=8
    local.get $2
    i32.const 0
    i32.store offset=12
    local.get $5
    i32.const 268435455
    i32.gt_u
    if
     i32.const 1056
     i32.const 1568
     i32.const 65
     i32.const 60
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.const 8
    local.get $5
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee $6
    i32.const 0
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store offset=4
    local.get $1
    local.get $6
    call $~lib/memory/memory.fill
    local.get $2
    local.get $1
    i32.store
    local.get $2
    local.get $1
    i32.const 0
    call $~lib/rt/itcms/__link
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $6
    i32.store offset=8
    local.get $2
    local.get $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    loop $for-loop|0
     local.get $4
     local.get $5
     i32.lt_s
     if
      local.get $7
      call $~lib/array/Array<~lib/string/String>#constructor
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $2
      local.get $4
      local.get $1
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|0
     end
    end
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 4672
     i32.store offset=16
     i32.const 0
     local.set $5
     local.get $0
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 5668
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 0
     i32.store offset=8
     local.get $0
     local.get $2
     i32.load offset=12
     local.tee $1
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $0
     i32.store
     local.get $0
     i32.load offset=4
     local.set $6
     loop $for-loop|00
      local.get $1
      local.get $2
      i32.load offset=12
      local.tee $4
      local.get $1
      local.get $4
      i32.lt_s
      select
      local.get $5
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $5
       i32.const 2
       i32.shl
       local.tee $7
       local.get $2
       i32.load offset=4
       i32.add
       i32.load
       local.tee $3
       i32.store offset=4
       local.get $4
       local.get $3
       local.get $5
       local.get $2
       i32.const 4672
       i32.load
       call_indirect $0 (type $i32_i32_i32_=>_i32)
       local.tee $4
       i32.store offset=8
       local.get $6
       local.get $7
       i32.add
       local.get $4
       i32.store
       local.get $0
       local.get $4
       i32.const 1
       call $~lib/rt/itcms/__link
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $for-loop|00
      end
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $folding-inner0
    end
    i32.const 0
    local.set $4
    loop $for-loop|1
     local.get $4
     local.get $5
     i32.lt_s
     if
      i32.const 0
      local.set $6
      loop $for-loop|2
       local.get $6
       local.get $7
       i32.lt_s
       if
        i32.const 4704
        local.set $1
        global.get $~lib/memory/__stack_pointer
        i32.const 4704
        i32.store offset=20
        local.get $4
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         i32.const 4752
         i32.store offset=16
         local.get $1
         i32.const 4704
         i32.const 4752
         call $~lib/string/String#concat
         local.tee $1
         i32.store offset=20
        end
        local.get $5
        local.get $4
        i32.const 1
        i32.add
        i32.le_s
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         i32.const 4800
         i32.store offset=16
         local.get $3
         local.get $1
         i32.const 4800
         call $~lib/string/String#concat
         local.tee $1
         i32.store offset=20
        end
        local.get $6
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         i32.const 4848
         i32.store offset=16
         local.get $3
         local.get $1
         i32.const 4848
         call $~lib/string/String#concat
         local.tee $1
         i32.store offset=20
        end
        local.get $7
        local.get $6
        i32.const 1
        i32.add
        i32.le_s
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         i32.const 4896
         i32.store offset=16
         local.get $3
         local.get $1
         i32.const 4896
         call $~lib/string/String#concat
         local.tee $1
         i32.store offset=20
        end
        local.get $0
        local.get $6
        local.get $4
        call $assembly/mazeFn/getNeighbors
        local.tee $3
        i32.const -1
        i32.ne
        if
         local.get $3
         i32.const 2
         i32.and
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $8
          i32.const 4800
          i32.store offset=16
          local.get $8
          local.get $1
          i32.const 4800
          call $~lib/string/String#concat
          local.tee $1
          i32.store offset=20
         end
         local.get $3
         i32.const 4
         i32.and
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $3
          i32.const 4896
          i32.store offset=16
          local.get $3
          local.get $1
          i32.const 4896
          call $~lib/string/String#concat
          local.tee $1
          i32.store offset=20
         end
         local.get $5
         local.get $4
         i32.const 1
         i32.add
         i32.gt_s
         if
          local.get $0
          local.get $6
          local.get $4
          i32.const 1
          i32.add
          call $assembly/mazeFn/getNeighbors
          local.tee $3
          i32.const 8
          i32.and
          i32.const 0
          local.get $3
          i32.const -1
          i32.ne
          select
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $3
           i32.const 4800
           i32.store offset=16
           local.get $3
           local.get $1
           i32.const 4800
           call $~lib/string/String#concat
           local.tee $1
           i32.store offset=20
          end
         end
         local.get $7
         local.get $6
         i32.const 1
         i32.add
         i32.gt_s
         if
          local.get $0
          local.get $6
          i32.const 1
          i32.add
          local.get $4
          call $assembly/mazeFn/getNeighbors
          local.tee $3
          i32.const 1
          i32.and
          i32.const 0
          local.get $3
          i32.const -1
          i32.ne
          select
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $3
           i32.const 4896
           i32.store offset=16
           local.get $3
           local.get $1
           i32.const 4896
           call $~lib/string/String#concat
           local.tee $1
           i32.store offset=20
          end
         end
        end
        local.get $2
        local.get $4
        call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        local.get $3
        local.get $6
        local.get $1
        call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $for-loop|2
       end
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 22080
  i32.const 22128
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/mazeFn/neighsToStrings (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.const 5
  i32.const 5072
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 5120
  call $~lib/rt/__newArray
  local.tee $1
  i32.store offset=4
  loop $for-loop|0
   local.get $2
   i32.const 4
   i32.lt_s
   if
    i32.const 1
    i32.const 3
    local.get $2
    i32.sub
    i32.shl
    local.get $0
    i32.and
    if
     local.get $4
     local.get $2
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $1
     local.get $3
     call $~lib/array/Array<~lib/typedarray/Int32Array>#push
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/utilsFn/getClassList (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store
  local.get $4
  i64.const 0
  i64.store offset=8
  local.get $4
  i64.const 0
  i64.store offset=16
  local.get $4
  i32.const 0
  i32.store offset=24
  local.get $4
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.tee $4
  i32.store
  loop $for-loop|0
   local.get $3
   i32.load offset=12
   local.get $6
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5152
    i32.store offset=4
    local.get $3
    local.get $6
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    i32.const 5152
    local.get $5
    call $~lib/string/String#concat
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $4
    local.get $5
    call $~lib/array/Array<~lib/typedarray/Int32Array>#push
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 1952
  i32.store offset=4
  local.get $3
  local.get $4
  i32.load offset=4
  local.get $4
  i32.load offset=12
  i32.const 1952
  call $~lib/util/string/joinStringArray
  local.tee $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  if (result i32)
   local.get $0
   i32.const 0
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=16
   i32.const 4896
   i32.const 1920
   local.get $4
   i32.load offset=8
   i32.const 2
   i32.shr_u
   i32.const 1
   i32.sub
   local.get $1
   i32.eq
   select
  else
   i32.const 4848
  end
  local.tee $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  if (result i32)
   i32.const 4800
   i32.const 1920
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   local.get $2
   i32.eq
   select
  else
   i32.const 4752
  end
  local.tee $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 5232
  i32.store offset=16
  i32.const 5236
  local.get $3
  i32.store
  i32.const 5232
  local.get $3
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 5232
  i32.store offset=16
  i32.const 5244
  local.get $1
  i32.store
  i32.const 5232
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 5232
  i32.store offset=16
  i32.const 5252
  local.get $0
  i32.store
  i32.const 5232
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 5232
  i32.store offset=16
  local.get $0
  i32.const 1920
  i32.store offset=4
  i32.const 5232
  i32.const 5228
  i32.load
  i32.const 2
  i32.shr_u
  i32.const 1920
  call $~lib/util/string/joinStringArray
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/utilsFn/updateBackward (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  local.get $3
  i64.const 0
  i64.store offset=16
  local.get $3
  i32.const 0
  i32.store offset=24
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $5
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $8
  local.get $3
  i32.const 24
  i32.shr_s
  local.set $2
  local.get $3
  i32.const 16
  i32.shr_s
  i32.const 255
  i32.and
  local.set $6
  local.get $5
  i32.const -1
  i32.ne
  if
   local.get $1
   local.get $6
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   i32.const 4608
   i32.store offset=4
   local.get $0
   local.get $2
   i32.const 4608
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  local.get $0
  local.get $5
  i32.const 24
  i32.shr_s
  local.tee $3
  local.get $5
  i32.const 16
  i32.shr_s
  i32.const 255
  i32.and
  local.tee $5
  call $assembly/mazeFn/getNeighbors
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  call $assembly/mazeFn/neighsToStrings
  local.tee $7
  i32.store offset=8
  local.get $1
  local.get $5
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $0
  local.get $3
  local.get $5
  local.get $7
  call $assembly/utilsFn/getClassList
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 5280
  i32.store offset=12
  local.get $7
  i32.const 5280
  call $~lib/string/String#concat
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $4
  local.get $3
  local.get $7
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
  local.get $5
  local.get $6
  i32.eq
  i32.const 0
  local.get $2
  local.get $3
  i32.eq
  select
  if
   local.get $1
   local.get $5
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $1
   local.get $5
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $2
   local.get $3
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 5328
   i32.store offset=12
   local.get $2
   i32.const 5328
   call $~lib/string/String#concat
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $3
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
  else
   local.get $8
   if
    local.get $1
    local.get $6
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $3
    i32.store
    local.get $3
    local.get $5
    local.get $2
    if (result i32)
     local.get $0
     i32.const 0
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     i32.const 4896
     i32.const 1920
     local.get $3
     i32.load offset=8
     i32.const 2
     i32.shr_u
     i32.const 1
     i32.sub
     local.get $2
     i32.eq
     select
    else
     i32.const 4848
    end
    local.tee $3
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $6
    if (result i32)
     i32.const 4800
     i32.const 1920
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.sub
     local.get $6
     i32.eq
     select
    else
     i32.const 4752
    end
    local.tee $0
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    i32.const 5408
    i32.store offset=4
    i32.const 5412
    local.get $3
    i32.store
    i32.const 5408
    local.get $3
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 5408
    i32.store offset=4
    i32.const 5420
    local.get $0
    i32.store
    i32.const 5408
    local.get $0
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 5408
    i32.store offset=4
    local.get $0
    i32.const 1920
    i32.store offset=12
    i32.const 5408
    i32.const 5404
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 1920
    call $~lib/util/string/joinStringArray
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
   else
    local.get $0
    local.get $2
    local.get $6
    call $assembly/mazeFn/getNeighbors
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    call $assembly/mazeFn/neighsToStrings
    local.tee $5
    i32.store offset=20
    local.get $1
    local.get $6
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $0
    local.get $2
    local.get $6
    local.get $5
    call $assembly/utilsFn/getClassList
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $3
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/typedarray/Int32Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
   end
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 18
    i32.const 57
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2
   i32.shl
   local.tee $2
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store offset=4
   local.get $0
   local.get $2
   call $~lib/memory/memory.fill
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 22080
  i32.const 22128
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  local.set $6
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $6
   call $~lib/memory/memory.copy
  end
  local.get $5
  local.get $3
  i32.store
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1360
   i32.const 1568
   i32.const 107
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 1616
   i32.const 1568
   i32.const 111
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  local.get $1
  i32.const 36
  i32.gt_s
  local.get $1
  i32.const 2
  i32.lt_s
  select
  if
   i32.const 2032
   i32.const 2160
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2224
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  local.tee $6
  select
  local.set $0
  local.get $1
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $0
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $0
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $0
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $0
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $0
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.get $6
   i32.add
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   loop $while-continue|0
    local.get $0
    i32.const 10000
    i32.ge_u
    if
     local.get $0
     i32.const 10000
     i32.rem_u
     local.set $7
     local.get $0
     i32.const 10000
     i32.div_u
     local.set $0
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     local.get $7
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 2236
     i32.add
     i64.load32_u
     local.get $7
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 2236
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $0
   i32.const 100
   i32.ge_u
   if
    local.get $1
    i32.const 2
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 2236
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 100
    i32.div_u
    local.set $0
   end
   local.get $0
   i32.const 10
   i32.ge_u
   if
    local.get $1
    i32.const 2
    i32.sub
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    i32.const 2236
    i32.add
    i32.load
    i32.store
   else
    local.get $1
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 48
    i32.add
    i32.store16
   end
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    i32.add
    local.tee $1
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $0
    i64.extend_i32_u
    local.set $4
    local.get $1
    local.set $0
    loop $while-continue|00
     local.get $0
     i32.const 2
     i32.ge_u
     if
      local.get $0
      i32.const 2
      i32.sub
      local.tee $0
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      local.get $4
      i32.wrap_i64
      i32.const 255
      i32.and
      i32.const 2
      i32.shl
      i32.const 2656
      i32.add
      i32.load
      i32.store
      local.get $4
      i64.const 8
      i64.shr_u
      local.set $4
      br $while-continue|00
     end
    end
    local.get $0
    i32.const 1
    i32.and
    if
     local.get $3
     local.get $4
     i32.wrap_i64
     i32.const 6
     i32.shl
     i32.const 2656
     i32.add
     i32.load16_u
     i32.store16
    end
   else
    global.get $~lib/memory/__stack_pointer
    block $__inlined_func$~lib/util/number/ulog_base (result i32)
     local.get $0
     i64.extend_i32_u
     local.tee $4
     local.set $2
     local.get $1
     i32.popcnt
     i32.const 1
     i32.eq
     if
      i32.const 63
      local.get $2
      i64.clz
      i32.wrap_i64
      i32.sub
      i32.const 31
      local.get $1
      i32.clz
      i32.sub
      i32.div_u
      i32.const 1
      i32.add
      br $__inlined_func$~lib/util/number/ulog_base
     end
     local.get $1
     i64.extend_i32_s
     local.tee $8
     local.set $5
     i32.const 1
     local.set $0
     loop $while-continue|01
      local.get $2
      local.get $5
      i64.ge_u
      if
       local.get $2
       local.get $5
       i64.div_u
       local.set $2
       local.get $5
       local.get $5
       i64.mul
       local.set $5
       local.get $0
       i32.const 1
       i32.shl
       local.set $0
       br $while-continue|01
      end
     end
     loop $while-continue|1
      local.get $2
      i64.const 1
      i64.ge_u
      if
       local.get $2
       local.get $8
       i64.div_u
       local.set $2
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $while-continue|1
      end
     end
     local.get $0
     i32.const 1
     i32.sub
    end
    local.get $6
    i32.add
    local.tee $0
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $1
    i64.extend_i32_s
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.get $1
    i32.and
    if
     loop $do-loop|1
      local.get $0
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      local.get $4
      local.get $2
      local.get $4
      local.get $2
      i64.div_u
      local.tee $4
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.const 3712
      i32.add
      i32.load16_u
      i32.store16
      local.get $4
      i64.const 0
      i64.ne
      br_if $do-loop|1
     end
    else
     local.get $1
     i32.ctz
     i32.const 7
     i32.and
     i64.extend_i32_s
     local.set $5
     local.get $2
     i64.const 1
     i64.sub
     local.set $2
     loop $do-loop|0
      local.get $0
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 1
      i32.shl
      local.get $3
      i32.add
      local.get $2
      local.get $4
      i64.and
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.const 3712
      i32.add
      i32.load16_u
      i32.store16
      local.get $4
      local.get $5
      i64.shr_u
      local.tee $4
      i64.const 0
      i64.ne
      br_if $do-loop|0
     end
    end
   end
  end
  local.get $6
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $6
  i64.const 0
  i64.store
  local.get $6
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1920
   return
  end
  local.get $6
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $1
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1920
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.tee $7
    i32.store offset=4
    local.get $7
    if
     local.get $7
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.get $4
     i32.add
     local.set $4
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $6
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $7
  i32.mul
  local.get $4
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=8
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   local.get $6
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.tee $4
    i32.store offset=4
    local.get $4
    if
     local.get $3
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $4
     local.get $4
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $3
     local.get $4
     i32.add
     local.set $3
    end
    local.get $7
    if
     local.get $3
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $2
     local.get $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $3
     local.get $7
     i32.add
     local.set $3
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   local.get $3
   i32.const 1
   i32.shl
   local.get $1
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/rbtFn/RecursiveBacktracker (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store
  local.get $5
  i64.const 0
  i64.store offset=8
  local.get $5
  i64.const 0
  i64.store offset=16
  local.get $5
  i32.const 0
  i32.store offset=24
  i32.const 1
  local.get $1
  i32.const 0
  i32.le_s
  local.get $0
  i32.const 0
  i32.le_s
  select
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 4
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#constructor
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 4
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#constructor
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 4
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#constructor
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $assembly/mazeFn/initGrid
  local.tee $7
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  i32.const 1808
  call $~lib/rt/__newArray
  local.tee $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 1840
  call $~lib/rt/__newArray
  local.tee $8
  i32.store offset=12
  i32.const -1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 7
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=16
  local.get $5
  local.get $0
  local.get $1
  call $assembly/mazeFn/initGrid
  local.tee $3
  i32.store
  local.get $5
  local.get $3
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $5
  local.get $8
  i32.store offset=4
  local.get $5
  local.get $8
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $5
  local.get $7
  i32.store offset=8
  local.get $5
  local.get $7
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $5
  i32.store offset=16
  i32.const 1
  local.set $2
  local.get $6
  local.get $7
  local.get $0
  call $assembly/utilsFn/getRand
  local.get $1
  call $assembly/utilsFn/getRand
  call $assembly/mazeFn/setVisited
  local.tee $3
  call $~lib/array/Array<i32>#push
  local.get $0
  local.get $1
  i32.mul
  local.set $1
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.gt_s
   if (result i32)
    local.get $6
    i32.load offset=12
   else
    i32.const 0
   end
   if
    local.get $3
    i32.const -1
    i32.eq
    if
     local.get $6
     i32.load offset=12
     local.tee $0
     i32.const 1
     i32.lt_s
     if
      i32.const 1872
      i32.const 1568
      i32.const 284
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     local.get $6
     i32.load offset=4
     local.get $0
     i32.const 1
     i32.sub
     local.tee $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $3
     local.get $6
     local.get $0
     i32.store offset=12
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 3
    call $~lib/typedarray/Int32Array#constructor
    local.tee $0
    i32.store offset=20
    local.get $0
    i32.const 0
    local.get $4
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    local.get $3
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 2
    local.get $3
    i32.const 1
    i32.and
    i32.eqz
    call $~lib/typedarray/Int32Array#__set
    local.get $8
    local.get $0
    call $~lib/array/Array<~lib/typedarray/Int32Array>#push
    local.get $7
    local.get $3
    local.tee $4
    call $assembly/mazeFn/getNext
    local.tee $3
    i32.const -1
    i32.ne
    if
     local.get $6
     local.get $3
     call $~lib/array/Array<i32>#push
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.store offset=24
  local.get $0
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  local.get $3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $8
  local.get $0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/string/String#repeat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $2
   i64.extend_i32_s
   local.get $1
   i64.extend_i32_s
   i64.mul
   i64.const 268435456
   i64.gt_u
  end
  if
   i32.const 1056
   i32.const 4096
   i32.const 333
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  local.get $1
  select
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1920
   return
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  i32.mul
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  local.get $1
  local.get $2
  i32.const 1
  i32.shl
  local.tee $1
  i32.mul
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.gt_u
   if
    local.get $3
    local.get $4
    i32.add
    local.get $0
    local.get $1
    call $~lib/memory/memory.copy
    local.get $1
    local.get $3
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1920
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
  local.get $3
  i32.add
  local.get $1
  local.get $4
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 16
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1056
   i32.const 1568
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assembly/index/generateClasses (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5668
  i32.lt_s
  if
   i32.const 22080
   i32.const 22128
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/utilsFn/generateClassLists
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/index/updateClasses (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5668
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store
   local.get $4
   local.get $1
   i32.store offset=4
   local.get $4
   local.get $2
   i32.store offset=8
   block $__inlined_func$assembly/utilsFn/updateClassLists
    local.get $3
    i32.const 0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 5668
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     i64.const 0
     i64.store offset=8
     local.get $3
     i64.const 0
     i64.store offset=16
     local.get $2
     i32.const 0
     call $~lib/typedarray/Int32Array#__get
     local.set $3
     local.get $0
     local.get $2
     i32.const 1
     call $~lib/typedarray/Int32Array#__get
     local.tee $6
     i32.const 24
     i32.shr_s
     local.tee $2
     local.get $6
     i32.const 16
     i32.shr_s
     i32.const 255
     i32.and
     local.tee $4
     call $assembly/mazeFn/getNeighbors
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     call $assembly/mazeFn/neighsToStrings
     local.tee $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $2
     local.get $4
     local.get $5
     call $assembly/utilsFn/getClassList
     local.tee $5
     i32.store offset=4
     local.get $1
     local.get $4
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 5280
     i32.store offset=16
     local.get $5
     i32.const 5280
     call $~lib/string/String#concat
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=12
     local.get $7
     local.get $2
     local.get $8
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
     local.get $3
     local.get $6
     i32.ne
     i32.const 0
     local.get $3
     i32.const -1
     i32.ne
     select
     if
      local.get $0
      local.get $3
      i32.const 24
      i32.shr_s
      local.tee $2
      local.get $3
      i32.const 16
      i32.shr_s
      i32.const 255
      i32.and
      local.tee $3
      call $assembly/mazeFn/getNeighbors
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      call $assembly/mazeFn/neighsToStrings
      local.tee $6
      i32.store offset=20
      local.get $1
      local.get $3
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=8
      local.get $0
      local.get $2
      local.get $3
      local.get $6
      call $assembly/utilsFn/getClassList
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $4
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
     else
      local.get $1
      local.get $4
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $0
      i32.store offset=8
      local.get $3
      i32.const 5328
      i32.store offset=16
      local.get $5
      i32.const 5328
      call $~lib/string/String#concat
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=12
      local.get $0
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$assembly/utilsFn/updateClassLists
    end
    local.get $0
    local.get $1
    local.get $2
    call $assembly/utilsFn/updateBackward
    local.set $1
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 22080
  i32.const 22128
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
