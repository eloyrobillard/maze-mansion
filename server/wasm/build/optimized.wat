(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
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
 (global $~lib/rt/__rtti_base i32 (i32.const 3584))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 20068))
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
 (data (i32.const 1900) "<")
 (data (i32.const 1912) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1964) "\1c")
 (data (i32.const 1976) "\01\00\00\00\n\00\00\00*\00*\00\n\00*\00*")
 (data (i32.const 1996) "\1c")
 (data (i32.const 2008) "\01\00\00\00\08\00\00\00*\00-\00-\00-")
 (data (i32.const 2028) ",")
 (data (i32.const 2040) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 2076) "\1c")
 (data (i32.const 2088) "\01")
 (data (i32.const 2108) "\1c")
 (data (i32.const 2120) "\01\00\00\00\02\00\00\00*")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2152) "\01\00\00\00\04\00\00\00\n\00|")
 (data (i32.const 2172) "\1c")
 (data (i32.const 2184) "\01\00\00\00\08\00\00\00 \00 \00 \00 ")
 (data (i32.const 2204) "\1c")
 (data (i32.const 2216) "\01\00\00\00\08\00\00\00 \00 \00 \00*")
 (data (i32.const 2236) "\1c")
 (data (i32.const 2248) "\01\00\00\00\08\00\00\00-\00-\00-\00*")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2280) "\01\00\00\00\08\00\00\00 \00 \00 \00|")
 (data (i32.const 2300) "\1c")
 (data (i32.const 2312) "\01\00\00\00\06\00\00\00 \00 \00 ")
 (data (i32.const 2332) "\1c")
 (data (i32.const 2344) "\01\00\00\00\04\00\00\00|\00\n")
 (data (i32.const 2364) ",")
 (data (i32.const 2376) "\t\00\00\00\14\00\00\000\08\00\00\00\00\00\000\t\00\00\00\00\00\000\08")
 (data (i32.const 2412) ",")
 (data (i32.const 2424) "\01\00\00\00\12\00\00\00n\00o\00 \00h\00e\00i\00g\00h\00t")
 (data (i32.const 2460) "\1c")
 (data (i32.const 2476) "\04\00\00\00\80\t")
 (data (i32.const 2492) ",")
 (data (i32.const 2504) "\01\00\00\00\10\00\00\00n\00o\00 \00w\00i\00d\00t\00h")
 (data (i32.const 2540) "\1c")
 (data (i32.const 2556) "\04\00\00\00\d0\t")
 (data (i32.const 2572) "\1c")
 (data (i32.const 2584) "\01\00\00\00\08\00\00\00c\00e\00l\00l")
 (data (i32.const 2604) "\1c")
 (data (i32.const 2616) "\n\00\00\00\08\00\00\00\01")
 (data (i32.const 2636) "\1c")
 (data (i32.const 2648) "\0b\00\00\00\08\00\00\00\02")
 (data (i32.const 2668) ",")
 (data (i32.const 2680) "\01\00\00\00\18\00\00\00c\00e\00l\00l\00 \00v\00i\00s\00i\00t\00e\00d")
 (data (i32.const 2716) ",")
 (data (i32.const 2728) "\01\00\00\00\12\00\00\00 \00w\00a\00l\00l\00-\00t\00o\00p")
 (data (i32.const 2764) ",")
 (data (i32.const 2776) "\01\00\00\00\18\00\00\00 \00w\00a\00l\00l\00-\00b\00o\00t\00t\00o\00m")
 (data (i32.const 2812) ",")
 (data (i32.const 2824) "\01\00\00\00\14\00\00\00 \00w\00a\00l\00l\00-\00l\00e\00f\00t")
 (data (i32.const 2860) ",")
 (data (i32.const 2872) "\01\00\00\00\16\00\00\00 \00w\00a\00l\00l\00-\00r\00i\00g\00h\00t")
 (data (i32.const 2908) "\1c")
 (data (i32.const 2920) "\01\00\00\00\06\00\00\00t\00o\00p")
 (data (i32.const 2940) "\1c")
 (data (i32.const 2952) "\01\00\00\00\n\00\00\00r\00i\00g\00h\00t")
 (data (i32.const 2972) "\1c")
 (data (i32.const 2984) "\01\00\00\00\0c\00\00\00b\00o\00t\00t\00o\00m")
 (data (i32.const 3004) "\1c")
 (data (i32.const 3016) "\01\00\00\00\08\00\00\00l\00e\00f\00t")
 (data (i32.const 3036) ",")
 (data (i32.const 3052) "\10\00\00\00p\0b\00\00\90\0b\00\00\b0\0b\00\00\d0\0b")
 (data (i32.const 3084) "\1c")
 (data (i32.const 3116) "\1c")
 (data (i32.const 3128) "\01\00\00\00\n\00\00\00w\00a\00l\00l\00-")
 (data (i32.const 3148) "\1c")
 (data (i32.const 3160) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 3180) ",")
 (data (i32.const 3192) "\01\00\00\00\1a\00\00\00c\00e\00l\00l\00 \00v\00i\00s\00i\00t\00e\00d\00 ")
 (data (i32.const 3228) ",")
 (data (i32.const 3240) "\t\00\00\00\1c\00\00\00\80\0c\00\00\00\00\00\000\08\00\00\00\00\00\000\08\00\00\00\00\00\000\08")
 (data (i32.const 3276) ",")
 (data (i32.const 3288) "\01\00\00\00\10\00\00\00 \00c\00u\00r\00r\00e\00n\00t")
 (data (i32.const 3324) "\1c")
 (data (i32.const 3336) "\01\00\00\00\0c\00\00\00 \00s\00t\00u\00c\00k")
 (data (i32.const 3356) ",")
 (data (i32.const 3368) "\01\00\00\00\16\00\00\00g\00r\00i\00d\00[\00y\00]\00[\00x\00]\00 ")
 (data (i32.const 3404) ",")
 (data (i32.const 3416) "\t\00\00\00\14\00\00\000\0d\00\00\00\00\00\000\08\00\00\00\00\00\000\08")
 (data (i32.const 3452) "<")
 (data (i32.const 3464) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 3516) "<")
 (data (i32.const 3528) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 3584) "\0c\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 3612) "\01\t\00\00\02\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\04A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\04A")
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
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1872
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1616
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1168
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3472
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3536
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
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
   i32.const 3584
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
   i32.const 3588
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  local.get $2
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
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
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
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
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.set $3
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $3
  local.get $2
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
   local.get $3
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
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
  local.tee $2
  local.set $3
  local.get $1
  i32.const 4
  i32.add
  local.get $2
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
  local.tee $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
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
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $2
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
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  i32.const 0
  local.get $2
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $1
  i32.const 16
  i32.sub
  i32.eq
  select
  if
   local.get $2
   i32.load
   local.set $3
   local.get $1
   i32.const 16
   i32.sub
   local.set $1
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
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
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
  i32.const 20080
  i32.const 0
  i32.store
  i32.const 21648
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 20080
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $1
      local.get $0
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 20080
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 20080
  i32.const 21652
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 20080
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
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
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $2
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
      local.get $2
      i32.ne
      if
       local.get $0
       local.get $2
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
       global.get $~lib/rt/itcms/visitCount
       return
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
      i32.const 20068
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $1
       if
        local.get $1
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
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
       local.get $2
       i32.ne
       if
        local.get $0
        local.get $2
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
     local.get $2
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
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
    i32.const 20068
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
     i32.const 20068
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
      if (result i32)
       i32.const 1
      else
       local.get $1
       i32.load
       i32.const 1
       i32.and
      end
      drop
      local.get $1
      local.get $1
      i32.load
      i32.const 1
      i32.or
      i32.store
      global.get $~lib/rt/tlsf/ROOT
      local.get $1
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
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
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.set $1
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
    local.get $0
    local.get $0
    local.get $1
    i32.ctz
    local.tee $0
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.ctz
    local.get $0
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
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
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
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
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    local.get $2
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $3
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
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
  local.get $3
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 4
   local.get $3
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $5
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $5
   i32.add
   local.get $5
   local.get $5
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $4
   local.get $2
   local.get $4
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $4
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $3
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $3
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.set $2
  end
  local.get $2
  i32.load
  drop
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.tee $6
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $6
   i32.const 2
   i32.and
   local.get $5
   i32.or
   i32.store
   local.get $5
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $3
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
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
  local.tee $2
  local.set $1
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $3
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 0
   i32.store8 offset=2
   local.get $3
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $3
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8 offset=3
   local.get $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $1
   i32.sub
   i32.const 3
   i32.and
   local.tee $3
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   local.get $3
   i32.sub
   i32.const -4
   i32.and
   local.tee $0
   i32.add
   local.tee $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $1
   i32.const 0
   i32.store offset=24
   local.get $3
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   local.get $1
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $3
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.sub
   local.set $0
   loop $while-continue|0
    local.get $0
    i32.const 32
    i32.ge_u
    if
     local.get $1
     i64.const 0
     i64.store
     local.get $1
     i64.const 0
     i64.store offset=8
     local.get $1
     i64.const 0
     i64.store offset=16
     local.get $1
     i64.const 0
     i64.store offset=24
     local.get $0
     i32.const 32
     i32.sub
     local.set $0
     local.get $1
     i32.const 32
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
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
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
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
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
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
        local.tee $3
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
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
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
        local.get $3
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
     local.tee $3
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $4
     i32.const 2
     i32.add
     local.set $1
     local.get $3
     local.get $4
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
       local.tee $3
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
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
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
       local.get $3
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
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
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
      local.tee $3
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
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
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
      local.get $3
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
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
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
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
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
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
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
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
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
   local.tee $0
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
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
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
   local.tee $3
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.get $4
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
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $2
  i32.store
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.tee $2
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
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/rt/itcms/__renew
    local.get $2
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
    local.tee $3
    local.get $0
    i32.load
    local.tee $2
    i32.const 20
    i32.sub
    local.tee $4
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $4
     local.get $3
     i32.store offset=16
     local.get $2
     local.set $1
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $3
    local.get $4
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $1
    local.get $2
    local.get $3
    local.get $4
    i32.load offset=16
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_u
    select
    call $~lib/memory/memory.copy
   end
   local.get $1
   local.get $2
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $3
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
    i32.const 130
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
   call $~lib/builtins/seed
   i64.reinterpret_f64
   local.tee $1
   i64.eqz
   if
    i64.const -7046029254386353131
    local.set $1
   end
   local.get $1
   local.get $1
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $1
   i64.const 33
   i64.shr_u
   local.get $1
   i64.xor
   global.set $~lib/math/random_state1_64
   i32.const 1
   global.set $~lib/math/random_seeded
  end
  global.get $~lib/math/random_state0_64
  local.set $2
  global.get $~lib/math/random_state1_64
  local.tee $1
  global.set $~lib/math/random_state0_64
  local.get $2
  i64.const 23
  i64.shl
  local.get $2
  i64.xor
  local.tee $2
  i64.const 17
  i64.shr_u
  local.get $2
  i64.xor
  local.get $1
  i64.xor
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $1
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
 (func $assembly/mazeFn/getY (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shr_s
  i32.const 255
  i32.and
 )
 (func $assembly/mazeFn/getX (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shr_s
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  local.get $2
  i32.store offset=12
 )
 (func $assembly/utilsFn/generateClassLists~anonymous|0~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 2592
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
    i32.const 3472
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
   local.tee $2
   i32.load offset=8
   local.set $3
   local.get $1
   local.get $2
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $3
   i32.store offset=8
   local.get $3
   local.get $3
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $2
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
   i32.const 3536
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
   local.tee $1
   i32.load offset=8
   local.set $2
   local.get $0
   global.get $~lib/rt/itcms/white
   local.get $1
   i32.or
   i32.store offset=4
   local.get $0
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $0
   i32.or
   i32.store offset=4
   local.get $1
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
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    local.tee $1
    if
     local.get $1
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
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
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     block $invalid
      block $~lib/staticarray/StaticArray<~lib/string/String>
       block $~lib/array/Array<i32>
        block $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>
         block $~lib/string/String
          block $~lib/arraybuffer/ArrayBuffer
           local.get $0
           i32.const 8
           i32.sub
           i32.load
           br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner1 $folding-inner1 $folding-inner0 $folding-inner0 $folding-inner0 $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>> $~lib/array/Array<i32> $~lib/staticarray/StaticArray<~lib/string/String> $folding-inner2 $folding-inner2 $invalid
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
       local.tee $0
       if
        local.get $0
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       return
      end
      local.get $0
      call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>~visit
      return
     end
     unreachable
    end
    local.get $0
    i32.load offset=4
    local.tee $1
    local.get $0
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.add
    local.set $2
    loop $while-continue|0
     local.get $1
     local.get $2
     i32.lt_u
     if
      local.get $1
      i32.load
      local.tee $3
      if
       local.get $3
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $0
    i32.load
    local.tee $0
    if
     local.get $0
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    return
   end
   local.get $0
   i32.load
   local.tee $0
   if
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   return
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  i32.const 20068
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
   i32.const 3684
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3684
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
   local.tee $3
   i32.store
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store offset=12
   local.get $1
   local.tee $2
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1568
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 8
   local.get $2
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store offset=4
   local.get $3
   local.get $6
   i32.store
   local.get $6
   if
    local.get $3
    local.get $6
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $3
   local.get $6
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $3
   i32.store
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.gt_s
    if
     local.get $0
     call $~lib/typedarray/Int32Array#constructor
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $1
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
     i32.const 0
     local.set $1
     loop $for-loop|1
      local.get $0
      local.get $1
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 3684
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       i32.const 0
       i32.store
       local.get $4
       local.get $3
       local.get $5
       call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
       local.tee $4
       i32.store
       local.get $4
       local.get $1
       local.get $1
       i32.const 24
       i32.shl
       local.get $5
       i32.const 16
       i32.shl
       i32.add
       call $~lib/typedarray/Int32Array#__set
       local.get $4
       local.get $1
       call $~lib/typedarray/Int32Array#__get
       drop
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $1
       i32.const 1
       i32.add
       local.set $1
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
   local.get $3
   return
  end
  i32.const 20096
  i32.const 20144
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/mazeFn/setVisited (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/mazeFn/isVisited (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
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
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/mazeFn/getNeighbors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  local.get $3
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.tee $3
  i32.const 1
  i32.and
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.const 240
   i32.and
   i32.const 4
   i32.shr_u
   return
  end
  i32.const 0
  i32.const 8
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
  select
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $3
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
  local.get $3
  i32.const 1
  i32.or
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
  select
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
  local.get $3
  i32.const 4
  i32.shl
  i32.const 1
  i32.add
  i32.or
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/mazeFn/removeNeighbor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  local.tee $5
  call $assembly/mazeFn/getNeighbors
  local.set $2
  i32.const -1
  local.set $1
  local.get $2
  i32.const -1
  i32.ne
  if
   local.get $2
   local.set $1
   loop $for-loop|0
    local.get $3
    i32.const 4
    i32.lt_s
    if
     i32.const 1
     i32.const 3
     local.get $3
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
           local.get $3
           br_table $case0|1 $case1|1 $case2|1 $case3|1 $break|1
          end
          local.get $1
          i32.const 247
          i32.and
          local.get $1
          local.get $0
          local.get $4
          local.get $5
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
         local.get $5
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
        local.get $5
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
       local.get $5
       call $assembly/mazeFn/isVisited
       select
       local.set $1
      end
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  block $folding-inner1
   local.get $1
   i32.const -1
   i32.eq
   br_if $folding-inner1
   i32.const 0
   local.set $3
   loop $for-loop|01
    local.get $6
    i32.const 4
    i32.lt_s
    if
     local.get $3
     i32.const 1
     i32.add
     local.get $3
     i32.const 1
     local.get $6
     i32.shl
     local.get $1
     i32.and
     select
     local.set $3
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|01
    end
   end
   local.get $3
   call $assembly/utilsFn/getRand
   local.set $2
   i32.const -1
   local.set $6
   i32.const 0
   local.set $3
   loop $for-loop|04
    local.get $3
    i32.const 4
    i32.lt_s
    if
     block $for-break03
      i32.const 1
      i32.const 3
      local.get $3
      i32.sub
      i32.shl
      local.get $1
      i32.and
      if
       local.get $6
       i32.const 1
       i32.add
       local.tee $6
       local.get $2
       i32.eq
       br_if $for-break03
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|04
     end
    end
   end
   block $folding-inner0
    block $case3|18
     block $case2|19
      block $case1|110
       block $case0|111
        local.get $3
        br_table $case0|111 $case1|110 $case2|19 $case3|18 $folding-inner1
       end
       local.get $0
       local.get $4
       local.get $5
       i32.const 1
       i32.sub
       local.tee $1
       call $assembly/mazeFn/setVisited
       local.get $0
       local.get $4
       local.get $5
       i32.const 0
       call $assembly/mazeFn/removeNeighbor
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
       local.set $0
       br $folding-inner0
      end
      local.get $0
      local.get $4
      i32.const 1
      i32.add
      local.tee $1
      local.get $5
      call $assembly/mazeFn/setVisited
      local.get $0
      local.get $4
      local.get $5
      i32.const 1
      call $assembly/mazeFn/removeNeighbor
      local.get $0
      local.get $5
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      local.get $1
      call $~lib/typedarray/Int32Array#__get
      local.set $0
      br $folding-inner0
     end
     local.get $0
     local.get $4
     local.get $5
     i32.const 1
     i32.add
     local.tee $1
     call $assembly/mazeFn/setVisited
     local.get $0
     local.get $4
     local.get $5
     i32.const 2
     call $assembly/mazeFn/removeNeighbor
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
     local.set $0
     br $folding-inner0
    end
    local.get $0
    local.get $4
    i32.const 1
    i32.sub
    local.tee $1
    local.get $5
    call $assembly/mazeFn/setVisited
    local.get $0
    local.get $4
    local.get $5
    i32.const 3
    call $assembly/mazeFn/removeNeighbor
    local.get $0
    local.get $5
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    call $~lib/typedarray/Int32Array#__get
    local.set $0
    br $folding-inner0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const -1
 )
 (func $assembly/rbtFn/RecursiveBacktracker (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3684
   i32.lt_s
   br_if $folding-inner0
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
   local.get $1
   i32.const 0
   i32.le_s
   local.get $0
   i32.const 0
   i32.le_s
   i32.or
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 7
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 4
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    i32.store offset=8
    local.get $1
    i32.const 0
    i32.const 0
    call $~lib/typedarray/Int32Array#constructor
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
    local.get $0
    i32.const 0
    local.get $1
    call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 4
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 0
    i32.const 0
    call $~lib/typedarray/Int32Array#constructor
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
    local.get $0
    i32.const 1
    local.get $1
    call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 32
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   call $assembly/mazeFn/initGrid
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 1808
   call $~lib/rt/__newArray
   local.tee $5
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   i32.const 1840
   call $~lib/rt/__newArray
   local.tee $7
   i32.store offset=12
   i32.const -1
   local.set $8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store offset=16
   local.get $6
   i32.const 0
   local.get $0
   local.get $1
   call $assembly/mazeFn/initGrid
   call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
   local.get $6
   i32.const 1
   local.get $7
   call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
   local.get $6
   i32.const 2
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
   local.get $6
   i32.store offset=16
   local.get $4
   local.get $0
   call $assembly/utilsFn/getRand
   local.tee $3
   local.get $1
   call $assembly/utilsFn/getRand
   local.tee $11
   call $assembly/mazeFn/setVisited
   i32.const 1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3684
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $4
   local.get $11
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   block $__inlined_func$assembly/mazeFn/loadNeighbors
    local.get $9
    local.get $3
    call $~lib/typedarray/Int32Array#__get
    local.tee $9
    i32.const 1
    i32.and
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $9
     i32.const 240
     i32.and
     i32.const 4
     i32.shr_u
     local.set $3
     br $__inlined_func$assembly/mazeFn/loadNeighbors
    end
    i32.const 0
    i32.const 8
    local.get $11
    i32.const 0
    i32.gt_s
    if (result i32)
     local.get $4
     local.get $3
     local.get $11
     i32.const 1
     i32.sub
     call $assembly/mazeFn/isVisited
    else
     i32.const 1
    end
    select
    local.set $9
    local.get $4
    i32.const 0
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $9
    local.get $9
    i32.const 4
    i32.or
    local.get $3
    i32.const 1
    i32.add
    local.get $10
    i32.load offset=8
    i32.const 2
    i32.shr_u
    i32.lt_s
    if (result i32)
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     local.get $11
     call $assembly/mazeFn/isVisited
    else
     i32.const 1
    end
    select
    local.tee $9
    local.get $9
    i32.const 2
    i32.or
    local.get $4
    i32.load offset=12
    local.get $11
    i32.const 1
    i32.add
    i32.gt_s
    if (result i32)
     local.get $4
     local.get $3
     local.get $11
     i32.const 1
     i32.add
     call $assembly/mazeFn/isVisited
    else
     i32.const 1
    end
    select
    local.tee $9
    i32.const 1
    i32.or
    local.set $12
    local.get $3
    i32.const 0
    i32.gt_s
    if (result i32)
     local.get $4
     local.get $3
     i32.const 1
     i32.sub
     local.get $11
     call $assembly/mazeFn/isVisited
    else
     i32.const 1
    end
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $4
    local.get $11
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.tee $10
    i32.store offset=4
    local.get $4
    local.get $11
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $10
    local.get $3
    local.get $11
    local.get $3
    call $~lib/typedarray/Int32Array#__get
    local.get $9
    local.get $12
    local.get $13
    select
    i32.const 4
    i32.shl
    i32.const 1
    i32.add
    i32.or
    call $~lib/typedarray/Int32Array#__set
    local.get $10
    local.get $3
    call $~lib/typedarray/Int32Array#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $5
   local.get $3
   call $~lib/array/Array<i32>#push
   local.get $0
   local.get $1
   i32.mul
   local.set $0
   loop $while-continue|0
    local.get $0
    local.get $2
    i32.gt_s
    if (result i32)
     local.get $5
     i32.load offset=12
    else
     i32.const 0
    end
    if
     local.get $3
     i32.const -1
     i32.eq
     if
      local.get $5
      i32.load offset=12
      local.tee $1
      i32.const 0
      i32.le_s
      if
       i32.const 1872
       i32.const 1568
       i32.const 291
       i32.const 18
       call $~lib/builtins/abort
       unreachable
      end
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 1
      i32.sub
      local.tee $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $3
      local.get $5
      local.get $1
      i32.store offset=12
     end
     local.get $4
     local.get $3
     i32.const 16
     i32.shr_s
     i32.const 255
     i32.and
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=20
     local.get $1
     local.get $3
     i32.const 24
     i32.shr_s
     call $~lib/typedarray/Int32Array#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 3
     call $~lib/typedarray/Int32Array#constructor
     local.tee $3
     i32.store offset=24
     local.get $3
     i32.const 0
     local.get $8
     call $~lib/typedarray/Int32Array#__set
     local.get $3
     i32.const 1
     local.get $1
     call $~lib/typedarray/Int32Array#__set
     local.get $7
     local.get $3
     call $~lib/array/Array<~lib/typedarray/Int32Array>#push
     local.get $4
     local.get $1
     call $assembly/mazeFn/getNext
     local.set $3
     local.get $4
     local.get $1
     i32.const 16
     i32.shr_s
     i32.const 255
     i32.and
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=20
     local.get $8
     local.get $1
     i32.const 24
     i32.shr_s
     call $~lib/typedarray/Int32Array#__get
     local.set $8
     local.get $3
     i32.const -1
     i32.ne
     if
      local.get $5
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
   i32.store offset=28
   local.get $0
   i32.const 0
   local.get $8
   call $~lib/typedarray/Int32Array#__set
   local.get $0
   i32.const 1
   local.get $3
   call $~lib/typedarray/Int32Array#__set
   local.get $7
   local.get $0
   call $~lib/array/Array<~lib/typedarray/Int32Array>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 20096
  i32.const 20144
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  i64.const 0
  i64.store offset=8
  local.get $1
  i64.const 0
  i64.store offset=16
  local.get $1
  i64.const 0
  i64.store offset=24
  block $folding-inner0
   local.get $0
   i32.load offset=12
   local.tee $7
   i32.const 0
   i32.le_s
   br_if $folding-inner0
   local.get $0
   i32.const 0
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $6
   local.get $7
   i32.const 0
   i32.le_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 2016
   i32.store offset=8
   i32.const 2016
   local.get $6
   call $~lib/string/String#repeat
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2128
   i32.store offset=4
   local.get $1
   local.get $2
   i32.const 2128
   call $~lib/string/String#concat
   local.tee $3
   i32.store offset=12
   loop $for-loop|0
    local.get $4
    local.get $7
    i32.lt_s
    if
     i32.const 2160
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 2160
     i32.store offset=16
     i32.const 2128
     local.set $8
     local.get $1
     i32.const 2128
     i32.store offset=20
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      local.get $6
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       i32.const 2192
       i32.store offset=24
       local.get $1
       i32.const 2224
       i32.store offset=28
       local.get $0
       local.get $2
       local.get $4
       call $assembly/mazeFn/getNeighbors
       local.tee $9
       i32.const 2
       i32.and
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        i32.const 2256
        i32.store offset=28
        i32.const 2256
       else
        i32.const 2224
       end
       local.set $1
       local.get $9
       i32.const 4
       i32.and
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        i32.const 2288
        i32.store offset=24
        i32.const 2288
       else
        i32.const 2192
       end
       local.set $9
       local.get $7
       local.get $4
       i32.const 1
       i32.add
       i32.gt_s
       if
        local.get $0
        local.get $2
        local.get $4
        i32.const 1
        i32.add
        call $assembly/mazeFn/getNeighbors
        i32.const 8
        i32.and
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 2256
         i32.store offset=28
         i32.const 2256
         local.set $1
        end
        global.get $~lib/memory/__stack_pointer
        local.get $8
        local.get $1
        call $~lib/string/String#concat
        local.tee $8
        i32.store offset=20
       end
       local.get $6
       local.get $2
       i32.const 1
       i32.add
       i32.gt_s
       if (result i32)
        local.get $0
        local.get $2
        i32.const 1
        i32.add
        local.get $4
        call $assembly/mazeFn/getNeighbors
        i32.const 1
        i32.and
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         i32.const 2288
         i32.store offset=24
         i32.const 2288
        else
         local.get $9
        end
       else
        global.get $~lib/memory/__stack_pointer
        i32.const 2320
        i32.store offset=24
        i32.const 2320
       end
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $5
       local.get $1
       call $~lib/string/String#concat
       local.tee $5
       i32.store offset=16
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 2384
     i32.store offset=4
     i32.const 2384
     i32.const 1
     local.get $5
     call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 2384
     i32.store offset=4
     i32.const 2384
     i32.const 3
     local.get $8
     call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
     global.get $~lib/memory/__stack_pointer
     i32.const 2384
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 2096
     i32.store offset=8
     i32.const 2384
     i32.const 2380
     i32.load
     i32.const 2
     i32.shr_u
     i32.const 2096
     call $~lib/util/string/joinStringArray
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $1
     local.get $3
     local.get $2
     call $~lib/string/String#concat
     local.tee $3
     i32.store offset=12
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 2256
   i32.store offset=4
   i32.const 2256
   local.get $6
   call $~lib/string/String#repeat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $3
   local.get $1
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
  i32.const 1984
 )
 (func $assembly/index/getTextMaze (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3684
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
   i32.const 3684
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
    i32.const 1920
    i32.const 118
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
    i32.const 1920
    i32.const 122
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
  i32.const 20096
  i32.const 20144
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
   i32.const 3684
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 2624
   i32.store
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3684
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
   local.tee $3
   i32.const 5
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $4
   i32.const 0
   local.set $1
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $3
    local.get $5
    i32.lt_s
    select
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $7
     local.get $1
     i32.const 2
     i32.shl
     local.tee $5
     local.get $0
     i32.load offset=4
     i32.add
     i32.load
     local.tee $6
     i32.store offset=4
     local.get $7
     local.get $6
     local.get $1
     local.get $0
     i32.const 2624
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     local.tee $6
     i32.store offset=8
     local.get $4
     local.get $5
     i32.add
     local.get $6
     i32.store
     local.get $6
     if
      local.get $2
      local.get $6
      i32.const 1
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
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
   local.get $2
   return
  end
  i32.const 20096
  i32.const 20144
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
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 3684
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store
    local.get $1
    i64.const 0
    i64.store offset=8
    local.get $1
    i64.const 0
    i64.store offset=16
    local.get $0
    i32.load offset=12
    local.set $5
    local.get $0
    i32.const 0
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.load offset=8
    i32.const 2
    i32.shr_u
    local.set $6
    local.get $5
    i32.const 0
    i32.le_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load offset=4
     i32.store offset=8
     local.get $2
     i32.const 0
     i32.const 1
     i32.const 5
     i32.const 2480
     call $~lib/rt/__newArray
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
     br $folding-inner1
    end
    local.get $6
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $2
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load offset=4
     i32.store offset=4
     local.get $2
     i32.const 0
     i32.const 1
     i32.const 5
     i32.const 2560
     call $~lib/rt/__newArray
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
     br $folding-inner1
    end
    local.get $0
    i32.const 0
    i32.const 0
    call $assembly/mazeFn/isVisited
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 3684
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store
    local.get $1
    i32.const 16
    i32.const 6
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    local.get $1
    i32.const 0
    i32.store
    local.get $1
    i32.const 0
    i32.store offset=4
    local.get $1
    i32.const 0
    i32.store offset=8
    local.get $1
    i32.const 0
    i32.store offset=12
    local.get $5
    i32.const 268435455
    i32.gt_u
    if
     i32.const 1056
     i32.const 1568
     i32.const 70
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
    local.tee $7
    i32.const 0
    call $~lib/rt/itcms/__new
    local.tee $8
    i32.store offset=4
    local.get $1
    local.get $8
    i32.store
    local.get $8
    if
     local.get $1
     local.get $8
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $1
    local.get $8
    i32.store offset=4
    local.get $1
    local.get $7
    i32.store offset=8
    local.get $1
    local.get $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
    local.get $1
    i32.store offset=8
    loop $for-loop|0
     local.get $3
     local.get $5
     i32.lt_s
     if
      local.get $6
      call $~lib/array/Array<~lib/string/String>#constructor
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=12
      local.get $1
      local.get $3
      local.get $4
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|0
     end
    end
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 2656
     i32.store offset=16
     local.get $0
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 3684
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 0
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     local.tee $3
     i32.const 6
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $2
     i32.store
     local.get $2
     i32.load offset=4
     local.set $4
     i32.const 0
     local.set $0
     loop $for-loop|07
      local.get $3
      local.get $1
      i32.load offset=12
      local.tee $5
      local.get $3
      local.get $5
      i32.lt_s
      select
      local.get $0
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       local.get $0
       i32.const 2
       i32.shl
       local.tee $6
       local.get $1
       i32.load offset=4
       i32.add
       i32.load
       local.tee $7
       i32.store offset=4
       local.get $5
       local.get $7
       local.get $0
       local.get $1
       i32.const 2656
       i32.load
       call_indirect $0 (type $i32_i32_i32_=>_i32)
       local.tee $5
       i32.store offset=8
       local.get $4
       local.get $6
       i32.add
       local.get $5
       i32.store
       local.get $5
       if
        local.get $2
        local.get $5
        i32.const 1
        call $byn-split-outlined-A$~lib/rt/itcms/__link
       end
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|07
      end
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $folding-inner1
    end
    i32.const 0
    local.set $3
    loop $for-loop|1
     local.get $3
     local.get $5
     i32.lt_s
     if
      i32.const 0
      local.set $4
      loop $for-loop|2
       local.get $4
       local.get $6
       i32.lt_s
       if
        i32.const 2688
        local.set $2
        global.get $~lib/memory/__stack_pointer
        i32.const 2688
        i32.store offset=20
        local.get $3
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         i32.const 2736
         i32.store offset=16
         local.get $2
         i32.const 2688
         i32.const 2736
         call $~lib/string/String#concat
         local.tee $2
         i32.store offset=20
        end
        local.get $5
        local.get $3
        i32.const 1
        i32.add
        i32.le_s
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $7
         i32.const 2784
         i32.store offset=16
         local.get $7
         local.get $2
         i32.const 2784
         call $~lib/string/String#concat
         local.tee $2
         i32.store offset=20
        end
        local.get $4
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $7
         i32.const 2832
         i32.store offset=16
         local.get $7
         local.get $2
         i32.const 2832
         call $~lib/string/String#concat
         local.tee $2
         i32.store offset=20
        end
        local.get $6
        local.get $4
        i32.const 1
        i32.add
        i32.le_s
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $7
         i32.const 2880
         i32.store offset=16
         local.get $7
         local.get $2
         i32.const 2880
         call $~lib/string/String#concat
         local.tee $2
         i32.store offset=20
        end
        local.get $0
        local.get $4
        local.get $3
        call $assembly/mazeFn/getNeighbors
        local.tee $7
        i32.const -1
        i32.ne
        if
         local.get $7
         i32.const 2
         i32.and
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $8
          i32.const 2784
          i32.store offset=16
          local.get $8
          local.get $2
          i32.const 2784
          call $~lib/string/String#concat
          local.tee $2
          i32.store offset=20
         end
         local.get $7
         i32.const 4
         i32.and
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $7
          i32.const 2880
          i32.store offset=16
          local.get $7
          local.get $2
          i32.const 2880
          call $~lib/string/String#concat
          local.tee $2
          i32.store offset=20
         end
         local.get $5
         local.get $3
         i32.const 1
         i32.add
         i32.gt_s
         if
          local.get $0
          local.get $4
          local.get $3
          i32.const 1
          i32.add
          call $assembly/mazeFn/getNeighbors
          local.tee $7
          i32.const 8
          i32.and
          i32.const 0
          local.get $7
          i32.const -1
          i32.ne
          select
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $7
           i32.const 2784
           i32.store offset=16
           local.get $7
           local.get $2
           i32.const 2784
           call $~lib/string/String#concat
           local.tee $2
           i32.store offset=20
          end
         end
         local.get $6
         local.get $4
         i32.const 1
         i32.add
         i32.gt_s
         if
          local.get $0
          local.get $4
          i32.const 1
          i32.add
          local.get $3
          call $assembly/mazeFn/getNeighbors
          local.tee $7
          i32.const 1
          i32.and
          local.get $7
          i32.const -1
          i32.ne
          i32.and
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $7
           i32.const 2880
           i32.store offset=16
           local.get $7
           local.get $2
           i32.const 2880
           call $~lib/string/String#concat
           local.tee $2
           i32.store offset=20
          end
         end
        end
        local.get $1
        local.get $3
        call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
        local.set $7
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        local.get $7
        local.get $4
        local.get $2
        call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $for-loop|2
       end
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    return
   end
   i32.const 20096
   i32.const 20144
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 4
  i32.const 5
  i32.const 3056
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 3104
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=4
  loop $for-loop|0
   local.get $1
   i32.const 4
   i32.lt_s
   if
    i32.const 1
    i32.const 3
    local.get $1
    i32.sub
    i32.shl
    local.get $0
    i32.and
    if
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     local.get $3
     local.get $4
     call $~lib/array/Array<~lib/typedarray/Int32Array>#push
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  local.get $5
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.tee $5
  i32.store
  loop $for-loop|0
   local.get $3
   i32.load offset=12
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 3136
    i32.store offset=4
    local.get $3
    local.get $4
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    i32.const 3136
    local.get $6
    call $~lib/string/String#concat
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $5
    local.get $6
    call $~lib/array/Array<~lib/typedarray/Int32Array>#push
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 3168
  i32.store offset=4
  local.get $3
  local.get $5
  i32.load offset=4
  local.get $5
  i32.load offset=12
  i32.const 3168
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
   i32.const 2880
   i32.const 2096
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
   i32.const 2832
  end
  local.tee $1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  if (result i32)
   i32.const 2784
   i32.const 2096
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   local.get $2
   i32.eq
   select
  else
   i32.const 2736
  end
  local.tee $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 3248
  i32.store offset=16
  i32.const 3248
  i32.const 1
  local.get $3
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 3248
  i32.store offset=16
  i32.const 3248
  i32.const 3
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 3248
  i32.store offset=16
  i32.const 3248
  i32.const 5
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
  global.get $~lib/memory/__stack_pointer
  i32.const 3248
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 2096
  i32.store offset=4
  i32.const 3248
  i32.const 3244
  i32.load
  i32.const 2
  i32.shr_u
  i32.const 2096
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  local.set $3
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $4
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $2
  local.get $4
  i32.const 24
  i32.shr_s
  local.set $5
  local.get $4
  i32.const 16
  i32.shr_s
  i32.const 255
  i32.and
  local.set $4
  local.get $3
  i32.const -1
  i32.ne
  if
   local.get $1
   local.get $4
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 2592
   i32.store offset=4
   local.get $0
   local.get $5
   i32.const 2592
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  local.get $0
  local.get $3
  i32.const 24
  i32.shr_s
  local.tee $6
  local.get $3
  i32.const 16
  i32.shr_s
  i32.const 255
  i32.and
  local.tee $7
  call $assembly/mazeFn/getNeighbors
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $assembly/mazeFn/neighsToStrings
  local.tee $8
  i32.store offset=8
  local.get $1
  local.get $7
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $0
  local.get $6
  local.get $7
  local.get $8
  call $assembly/utilsFn/getClassList
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 3296
  i32.store offset=12
  local.get $8
  i32.const 3296
  call $~lib/string/String#concat
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $3
  local.get $6
  local.get $8
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
  local.get $4
  local.get $7
  i32.eq
  local.get $5
  local.get $6
  i32.eq
  i32.and
  if
   local.get $1
   local.get $7
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $1
   local.get $7
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $2
   local.get $6
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 3344
   i32.store offset=12
   local.get $2
   i32.const 3344
   call $~lib/string/String#concat
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $6
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
  else
   local.get $2
   if
    local.get $1
    local.get $4
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $2
    i32.store
    local.get $3
    local.get $5
    if (result i32)
     local.get $0
     i32.const 0
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     i32.const 2880
     i32.const 2096
     local.get $3
     i32.load offset=8
     i32.const 2
     i32.shr_u
     i32.const 1
     i32.sub
     local.get $5
     i32.eq
     select
    else
     i32.const 2832
    end
    local.tee $3
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $4
    if (result i32)
     i32.const 2784
     i32.const 2096
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.sub
     local.get $4
     i32.eq
     select
    else
     i32.const 2736
    end
    local.tee $0
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    i32.const 3424
    i32.store offset=4
    i32.const 3424
    i32.const 1
    local.get $3
    call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3424
    i32.store offset=4
    i32.const 3424
    i32.const 3
    local.get $0
    call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
    global.get $~lib/memory/__stack_pointer
    i32.const 3424
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 2096
    i32.store offset=12
    i32.const 3424
    i32.const 3420
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 2096
    call $~lib/util/string/joinStringArray
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $5
    local.get $0
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
   else
    local.get $0
    local.get $5
    local.get $4
    call $assembly/mazeFn/getNeighbors
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    call $assembly/mazeFn/neighsToStrings
    local.tee $2
    i32.store offset=20
    local.get $1
    local.get $4
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $0
    local.get $5
    local.get $4
    local.get $2
    call $assembly/utilsFn/getClassList
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $3
    local.get $5
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
   i32.const 3684
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
   local.tee $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3684
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
    i32.const 19
    i32.const 57
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2
   i32.shl
   local.tee $0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store offset=4
   local.get $1
   local.get $3
   i32.store
   local.get $3
   if
    local.get $1
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $1
   local.get $3
   i32.store offset=4
   local.get $1
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 20096
  i32.const 20144
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
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
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
   i32.const 114
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
   i32.const 118
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
 (func $~lib/string/String#repeat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $4
  i64.extend_i32_s
  local.get $1
  i64.extend_i32_s
  i64.mul
  i64.const 268435456
  i64.gt_u
  i32.or
  if
   i32.const 1056
   i32.const 2048
   i32.const 333
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  local.get $1
  select
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2096
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
  local.get $4
  i32.mul
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $1
  local.get $4
  i32.const 1
  i32.shl
  local.tee $4
  i32.mul
  local.set $1
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.gt_u
   if
    local.get $2
    local.get $3
    i32.add
    local.get $0
    local.get $4
    call $~lib/memory/memory.copy
    local.get $2
    local.get $4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  local.tee $2
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  i32.add
  local.tee $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2096
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  local.get $4
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2096
   return
  end
  local.get $5
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
   i32.const 2096
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    if
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.get $3
     i32.add
     local.set $3
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $5
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store offset=8
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.tee $7
    i32.store offset=4
    local.get $7
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $6
     i32.add
     local.get $7
     local.get $7
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $7
     i32.add
     local.set $1
    end
    local.get $3
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $6
     i32.add
     local.get $2
     local.get $3
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $3
     i32.add
     local.set $1
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   local.get $1
   i32.const 1
   i32.shl
   local.get $6
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
  local.get $6
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
   i32.const 70
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
  local.tee $2
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
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
  i32.const 3684
  i32.lt_s
  if
   i32.const 20096
   i32.const 20144
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
   i32.const 3684
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
   block $__inlined_func$assembly/utilsFn/updateClassLists (result i32)
    local.get $3
    i32.const 0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 3684
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
     local.set $5
     local.get $2
     i32.const 1
     call $~lib/typedarray/Int32Array#__get
     local.tee $6
     i32.const 24
     i32.shr_s
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.const 240
     i32.and
     i32.const 4
     i32.shr_u
     call $assembly/mazeFn/neighsToStrings
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $2
     local.get $6
     i32.const 16
     i32.shr_s
     i32.const 255
     i32.and
     local.tee $3
     local.get $4
     call $assembly/utilsFn/getClassList
     local.tee $4
     i32.store offset=4
     local.get $1
     local.get $3
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 3296
     i32.store offset=16
     local.get $4
     i32.const 3296
     call $~lib/string/String#concat
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=12
     local.get $7
     local.get $2
     local.get $8
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
     local.get $5
     local.get $6
     i32.ne
     local.get $5
     i32.const -1
     i32.ne
     i32.and
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.const 240
      i32.and
      i32.const 4
      i32.shr_u
      call $assembly/mazeFn/neighsToStrings
      local.tee $2
      i32.store offset=20
      local.get $1
      local.get $5
      i32.const 16
      i32.shr_s
      i32.const 255
      i32.and
      local.tee $3
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=8
      local.get $0
      local.get $5
      i32.const 24
      i32.shr_s
      local.tee $0
      local.get $3
      local.get $2
      call $assembly/utilsFn/getClassList
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=12
      local.get $4
      local.get $0
      local.get $2
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
     else
      local.get $1
      local.get $3
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $0
      i32.store offset=8
      local.get $3
      i32.const 3344
      i32.store offset=16
      local.get $4
      i32.const 3344
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
     local.get $1
     br $__inlined_func$assembly/utilsFn/updateClassLists
    end
    local.get $0
    local.get $1
    local.get $2
    call $assembly/utilsFn/updateBackward
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 20096
  i32.const 20144
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
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
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
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
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
