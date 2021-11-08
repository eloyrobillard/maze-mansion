(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (import "wasi_snapshot_preview1" "random_get" (func $~lib/bindings/wasi_snapshot_preview1/random_get (param i32 i32) (result i32)))
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
 (global $assembly/index/maze (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 3120))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 19580))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1068) "<")
 (data (i32.const 1080) "\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1180) "<")
 (data (i32.const 1192) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1244) "<")
 (data (i32.const 1256) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1372) "<")
 (data (i32.const 1384) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1436) ",")
 (data (i32.const 1448) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1516) "<")
 (data (i32.const 1528) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1580) "\1c")
 (data (i32.const 1612) "\1c")
 (data (i32.const 1644) ",")
 (data (i32.const 1656) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1692) ",")
 (data (i32.const 1704) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1740) "|")
 (data (i32.const 1752) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 1868) "\1c")
 (data (i32.const 1900) "\1c")
 (data (i32.const 1964) ",")
 (data (i32.const 1976) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 2012) "<")
 (data (i32.const 2024) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 2076) "\1c")
 (data (i32.const 2088) "\01\00\00\00\08\00\00\00*\00-\00-\00-")
 (data (i32.const 2108) "\1c")
 (data (i32.const 2120) "\01")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2152) "\01\00\00\00\02\00\00\00*")
 (data (i32.const 2172) "\1c")
 (data (i32.const 2184) "\01\00\00\00\04\00\00\00\n\00|")
 (data (i32.const 2204) "\1c")
 (data (i32.const 2216) "\01\00\00\00\08\00\00\00 \00 \00 \00 ")
 (data (i32.const 2236) "\1c")
 (data (i32.const 2248) "\01\00\00\00\08\00\00\00 \00 \00 \00*")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2280) "\01\00\00\00\08\00\00\00-\00-\00-\00*")
 (data (i32.const 2300) "\1c")
 (data (i32.const 2312) "\01\00\00\00\08\00\00\00 \00 \00 \00|")
 (data (i32.const 2332) "\1c")
 (data (i32.const 2344) "\01\00\00\00\06\00\00\00 \00 \00 ")
 (data (i32.const 2364) "\1c")
 (data (i32.const 2376) "\01\00\00\00\04\00\00\00|\00\n")
 (data (i32.const 2396) ",")
 (data (i32.const 2408) "\06\00\00\00\14\00\00\00P\08\00\00\00\00\00\00P\t\00\00\00\00\00\00P\08")
 (data (i32.const 2540) "\1c")
 (data (i32.const 2552) "\06\00\00\00\04\00\00\00P\08")
 (data (i32.const 2572) ",")
 (data (i32.const 2584) "\01\00\00\00\18\00\00\00c\00e\00l\00l\00 \00v\00i\00s\00i\00t\00e\00d")
 (data (i32.const 2620) "\1c")
 (data (i32.const 2632) "\01\00\00\00\08\00\00\00c\00e\00l\00l")
 (data (i32.const 2652) ",")
 (data (i32.const 2664) "\01\00\00\00\12\00\00\00 \00w\00a\00l\00l\00-\00t\00o\00p")
 (data (i32.const 2700) ",")
 (data (i32.const 2712) "\01\00\00\00\18\00\00\00 \00w\00a\00l\00l\00-\00b\00o\00t\00t\00o\00m")
 (data (i32.const 2748) ",")
 (data (i32.const 2760) "\01\00\00\00\14\00\00\00 \00w\00a\00l\00l\00-\00l\00e\00f\00t")
 (data (i32.const 2796) ",")
 (data (i32.const 2808) "\01\00\00\00\16\00\00\00 \00w\00a\00l\00l\00-\00r\00i\00g\00h\00t")
 (data (i32.const 2844) "\1c")
 (data (i32.const 2856) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 2876) ",")
 (data (i32.const 2888) "\06\00\00\00\14\00\00\00P\08\00\00\00\00\00\000\0b\00\00\00\00\00\00P\08")
 (data (i32.const 2924) "\1c")
 (data (i32.const 2936) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 2956) "\1c")
 (data (i32.const 2968) "\08\00\00\00\08\00\00\00\01")
 (data (i32.const 2988) "<")
 (data (i32.const 3000) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 3052) "<")
 (data (i32.const 3064) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 3120) "\t\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 3148) "\02\t\00\00\00\00\00\00\02A\00\00\00\00\00\00\04A\00\00\00\00\00\00\04A\00\00\00\00\00\00\04A")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:assembly/index~anonymous|0)
 (export "getTextMaze" (func $assembly/index/getTextMaze))
 (export "getMazeDescriptor" (func $assembly/index/getMazeDescriptor))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (export "generateClasses" (func $export:assembly/index/generateClasses))
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $4
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $3
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $3
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $4
       local.get $0
       i32.const 2
       i32.add
       i32.gt_u
       i32.const 0
       local.get $3
       i32.const 56320
       i32.lt_u
       select
       if
        local.get $0
        i32.load16_u offset=2
        local.tee $5
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $1
         local.get $3
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.const 65536
         i32.add
         local.get $5
         i32.const 1023
         i32.and
         i32.or
         local.tee $3
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 24
         i32.shl
         local.get $3
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 16
         i32.shl
         i32.or
         local.get $3
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 8
         i32.shl
         i32.or
         local.get $3
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         i32.or
         i32.store
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
      end
      local.get $1
      local.get $3
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
  local.get $2
  i32.sub
 )
 (func $~lib/wasi/index/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 12
  i32.store
  i32.const 12
  i64.const 9071471065260641
  i64.store
  local.get $0
  if (result i32)
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 19
   call $~lib/string/String.UTF8.encodeUnsafe
   i32.const 19
   i32.add
  else
   i32.const 19
  end
  local.tee $4
  i32.const 544106784
  i32.store
  local.get $4
  i32.const 4
  i32.add
  local.set $4
  local.get $1
  if
   local.get $1
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $4
   call $~lib/string/String.UTF8.encodeUnsafe
   local.get $4
   i32.add
   local.set $4
  end
  local.get $4
  i32.const 40
  i32.store8
  local.get $2
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $2
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $2
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $2
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $2
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $2
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $0
  local.get $4
  i32.const 1
  i32.add
  i32.add
  local.set $4
  loop $do-loop|0
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   local.get $2
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $2
   i32.const 10
   i32.div_u
   local.tee $2
   br_if $do-loop|0
  end
  local.get $0
  local.get $4
  i32.add
  local.tee $0
  i32.const 58
  i32.store8
  local.get $0
  i32.const 1
  i32.add
  local.get $3
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $3
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $3
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $3
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $3
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $0
  i32.add
  local.set $4
  loop $do-loop|1
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   local.get $3
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $3
   i32.const 10
   i32.div_u
   local.tee $3
   br_if $do-loop|1
  end
  local.get $0
  local.get $4
  i32.add
  local.tee $0
  i32.const 2601
  i32.store16
  i32.const 4
  local.get $0
  i32.const 10
  i32.sub
  i32.store
  i32.const 2
  i32.const 0
  i32.const 1
  i32.const 8
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  drop
  i32.const 255
  call $~lib/bindings/wasi_snapshot_preview1/proc_exit
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/index/maze
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1392
  call $~lib/rt/itcms/__visit
  i32.const 1664
  call $~lib/rt/itcms/__visit
  i32.const 1984
  call $~lib/rt/itcms/__visit
  i32.const 1760
  call $~lib/rt/itcms/__visit
  i32.const 1200
  call $~lib/rt/itcms/__visit
  i32.const 3008
  call $~lib/rt/itcms/__visit
  i32.const 3072
  call $~lib/rt/itcms/__visit
  i32.const 1088
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
   i32.const 3120
   i32.load
   local.get $1
   i32.lt_u
   if
    i32.const 1392
    i32.const 1456
    i32.const 22
    i32.const 28
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.shl
   i32.const 3124
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
  i32.const 19584
  i32.const 0
  i32.store
  i32.const 21152
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
    i32.const 19584
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
      i32.const 19584
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
  i32.const 19584
  i32.const 21156
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 19584
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
       i32.const 19580
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
     i32.const 19580
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
      i32.const 19580
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
   i32.const 1200
   i32.const 1264
   i32.const 260
   i32.const 31
   call $~lib/wasi/index/abort
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
   i32.const 1200
   i32.const 1536
   i32.const 458
   i32.const 29
   call $~lib/wasi/index/abort
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
 (func $~lib/array/Array<~lib/array/Array<i32>>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 1664
    i32.const 1712
    i32.const 18
    i32.const 48
    call $~lib/wasi/index/abort
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
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 1392
    i32.const 1712
    i32.const 123
    i32.const 22
    call $~lib/wasi/index/abort
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
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1392
   i32.const 1712
   i32.const 107
   i32.const 42
   call $~lib/wasi/index/abort
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
   loop $do-loop|0
    i32.const 1936
    i32.const 8
    call $~lib/bindings/wasi_snapshot_preview1/random_get
    drop
    i32.const 1936
    i64.load
    local.tee $2
    i64.eqz
    br_if $do-loop|0
   end
   i64.const -7046029254386353131
   local.get $2
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
 (func $~lib/array/Array<~lib/array/Array<i32>>#push (param $0 i32) (param $1 i32)
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
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.tee $4
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $6
  i64.const 0
  i64.store
  local.get $6
  i32.const 0
  i32.store offset=8
  block $__inlined_func$~lib/util/string/joinStringArray
   local.get $0
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
    i32.const 2128
    local.set $0
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   local.get $6
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $4
    i32.load
    local.tee $0
    i32.store
    local.get $0
    i32.const 2128
    local.get $0
    select
    local.set $0
    local.get $1
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   loop $for-loop|0
    local.get $0
    local.get $5
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.const 2
     i32.shl
     local.get $4
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
      local.get $3
      i32.add
      local.set $3
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
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $7
   i32.mul
   local.get $3
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
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
     local.get $4
     i32.add
     i32.load
     local.tee $3
     i32.store offset=4
     local.get $3
     if
      local.get $2
      i32.const 1
      i32.shl
      local.get $0
      i32.add
      local.get $3
      local.get $3
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $3
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $2
      local.get $3
      i32.add
      local.set $2
     end
     local.get $7
     if
      local.get $2
      i32.const 1
      i32.shl
      local.get $0
      i32.add
      local.get $1
      local.get $7
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $2
      local.get $7
      i32.add
      local.set $2
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
   local.get $4
   i32.add
   i32.load
   local.tee $1
   i32.store offset=4
   local.get $1
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $1
    local.get $1
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
  end
  local.get $0
 )
 (func $~lib/as-wasi/as-wasi/Console.write (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3196
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3196
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store
   local.get $4
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3196
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   local.get $1
   i32.add
   local.set $5
   loop $while-continue|0
    local.get $1
    local.get $5
    i32.lt_u
    if
     local.get $1
     i32.load16_u
     local.tee $6
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 1
      i32.add
     else
      local.get $6
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
      else
       local.get $5
       local.get $1
       i32.const 2
       i32.add
       i32.gt_u
       i32.const 0
       local.get $6
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       select
       if
        local.get $1
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         br $while-continue|0
        end
       end
       local.get $2
       i32.const 3
       i32.add
      end
     end
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
   local.get $3
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $2
   call $~lib/string/String.UTF8.encodeUnsafe
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $2
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   local.set $0
   i32.const 2448
   local.get $2
   i32.store
   i32.const 2452
   local.get $0
   i32.store
   i32.const 2480
   i32.const 10
   i32.store8
   i32.const 2456
   i32.const 2480
   i32.store
   i32.const 2460
   i32.const 1
   i32.store
   i32.const 1
   i32.const 2448
   i32.const 2
   i32.const 2496
   call $~lib/bindings/wasi_snapshot_preview1/fd_write
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 19600
  i32.const 19648
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.get $1
  i32.le_u
  if
   i32.const 1392
   i32.const 2032
   i32.const 130
   i32.const 41
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
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
    i32.const 3008
    i32.const 1264
    i32.const 337
    i32.const 7
    call $~lib/wasi/index/abort
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
   i32.const 3072
   i32.const 1264
   i32.const 351
   i32.const 5
   call $~lib/wasi/index/abort
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
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner0
   block $invalid
    block $~lib/function/Function<%28~lib/string/String%2C~lib/staticarray/StaticArray<~lib/string/String>%2Ci32%2C~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>%29=>~lib/string/String>
     block $~lib/array/Array<~lib/array/Array<i32>>
      block $~lib/array/Array<i32>
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/array/Array<i32> $~lib/array/Array<~lib/array/Array<i32>> $folding-inner0 $folding-inner0 $folding-inner0 $~lib/function/Function<%28~lib/string/String%2C~lib/staticarray/StaticArray<~lib/string/String>%2Ci32%2C~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>%29=>~lib/string/String> $invalid
         end
         return
        end
        return
       end
       local.get $0
       i32.load
       local.tee $0
       if
        local.get $0
        call $~lib/rt/itcms/__visit
       end
       return
      end
      local.get $0
      i32.load
      call $~lib/rt/itcms/__visit
      return
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
    i32.load offset=4
    call $~lib/rt/itcms/__visit
    return
   end
   unreachable
  end
  local.get $0
  local.tee $1
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $2
  loop $while-continue|00
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $0
    if
     local.get $0
     call $~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|00
   end
  end
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3196
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i64.const 0
   i64.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=16
   memory.size
   i32.const 16
   i32.shl
   i32.const 19580
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1316
   i32.const 1312
   i32.store
   i32.const 1320
   i32.const 1312
   i32.store
   i32.const 1312
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1348
   i32.const 1344
   i32.store
   i32.const 1352
   i32.const 1344
   i32.store
   i32.const 1344
   global.set $~lib/rt/itcms/toSpace
   i32.const 1492
   i32.const 1488
   i32.store
   i32.const 1496
   i32.const 1488
   i32.store
   i32.const 1488
   global.set $~lib/rt/itcms/fromSpace
   i32.const 0
   i32.const 0
   call $assembly/rbtFn/RecursiveBacktracker
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/array/Array<i32>>>#__get
   global.set $assembly/index/maze
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/maze
   local.tee $0
   i32.store offset=4
   local.get $0
   call $assembly/utilsFn/printMaze
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/as-wasi/as-wasi/Console.write
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/maze
   local.tee $0
   i32.store offset=16
   local.get $0
   call $assembly/utilsFn/generateClassLists
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 2976
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 2128
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3196
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   i32.const 2128
   local.set $1
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.tee $5
     i32.store
     local.get $4
     local.get $1
     local.get $5
     local.get $2
     local.get $0
     i32.const 2976
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.tee $1
     i32.store offset=4
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/as-wasi/as-wasi/Console.write
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 19600
  i32.const 19648
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
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
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 3196
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
    i32.const 3196
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
    local.tee $4
    i32.const 268435455
    i32.gt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 8
    local.get $4
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
    local.get $4
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    local.get $2
    i32.store
    loop $for-loop|0
     local.get $4
     local.get $5
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 3196
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      i64.const 0
      i64.store
      local.get $1
      i32.const 16
      i32.const 3
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
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.const 8
      local.get $0
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee $6
      i32.const 0
      call $~lib/rt/itcms/__new
      local.tee $3
      i32.store offset=4
      local.get $3
      local.get $6
      call $~lib/memory/memory.fill
      local.get $1
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
      local.get $6
      i32.store offset=8
      local.get $1
      local.get $0
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $2
      i32.load offset=12
      local.get $5
      i32.le_u
      if
       local.get $5
       i32.const 0
       i32.lt_s
       if
        i32.const 1392
        i32.const 1712
        i32.const 123
        i32.const 22
        call $~lib/wasi/index/abort
        unreachable
       end
       local.get $2
       local.get $5
       i32.const 1
       i32.add
       local.tee $3
       call $~lib/array/ensureCapacity
       local.get $2
       local.get $3
       i32.store offset=12
      end
      local.get $2
      local.get $5
      local.get $1
      call $~lib/array/Array<~lib/array/Array<i32>>#__uset
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
        i32.const 3196
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        i32.const 0
        i32.store
        local.get $3
        local.get $2
        local.get $5
        call $~lib/array/Array<~lib/array/Array<i32>>#__get
        local.tee $3
        i32.store
        local.get $3
        local.get $1
        local.get $1
        i32.const 24
        i32.shl
        local.get $5
        i32.const 16
        i32.shl
        i32.add
        call $~lib/array/Array<i32>#__set
        local.get $3
        local.get $1
        call $~lib/array/Array<i32>#__get
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
    local.get $2
    return
   end
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 1664
  i32.const 1712
  i32.const 65
  i32.const 60
  call $~lib/wasi/index/abort
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
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $3
  local.get $1
  local.get $4
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 256
  i32.or
  call $~lib/array/Array<i32>#__set
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__get
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
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__get
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
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/array/Array<i32>#__get
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
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
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
  local.get $4
  i32.load offset=12
  local.get $1
  i32.const 1
  i32.add
  i32.gt_s
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
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $4
  local.get $1
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__get
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
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
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
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
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
       call $~lib/array/Array<~lib/array/Array<i32>>#__get
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       local.get $0
       local.get $2
       call $~lib/array/Array<~lib/array/Array<i32>>#__get
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=4
       local.get $3
       local.get $1
       local.get $4
       local.get $1
       call $~lib/array/Array<i32>#__get
       i32.const -129
       i32.and
       call $~lib/array/Array<i32>#__set
       br $break|0
      end
      local.get $0
      local.get $2
      call $~lib/array/Array<~lib/array/Array<i32>>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $0
      local.get $2
      call $~lib/array/Array<~lib/array/Array<i32>>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=4
      local.get $3
      local.get $1
      local.get $4
      local.get $1
      call $~lib/array/Array<i32>#__get
      i32.const -65
      i32.and
      call $~lib/array/Array<i32>#__set
      br $break|0
     end
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/array/Array<i32>>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/array/Array<i32>>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $3
     local.get $1
     local.get $4
     local.get $1
     call $~lib/array/Array<i32>#__get
     i32.const -33
     i32.and
     call $~lib/array/Array<i32>#__set
     br $break|0
    end
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $3
    local.get $1
    local.get $4
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const -17
    i32.and
    call $~lib/array/Array<i32>#__set
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
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__get
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
    i32.const 3196
    i32.lt_s
    if
     i32.const 19600
     i32.const 19648
     i32.const 1
     i32.const 1
     call $~lib/wasi/index/abort
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
       call $~lib/array/Array<~lib/array/Array<i32>>#__get
       local.set $0
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $1
       call $~lib/array/Array<i32>#__get
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
     call $~lib/array/Array<~lib/array/Array<i32>>#__get
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/array/Array<i32>#__get
     br $folding-inner1
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/array/Array<i32>>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
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
 (func $assembly/rbtFn/RecursiveBacktracker (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
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
  i64.const 0
  i64.store offset=24
  local.get $5
  i32.const 0
  i32.store offset=32
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
   i32.const 5
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
   i32.const 3
   i32.const 1056
   call $~lib/rt/__newArray
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
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
   i32.const 3
   i32.const 1600
   call $~lib/rt/__newArray
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
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
   i32.const 3
   i32.const 1632
   call $~lib/rt/__newArray
   call $~lib/array/Array<~lib/array/Array<i32>>#__uset
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 36
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
  i32.const 3
  i32.const 1888
  call $~lib/rt/__newArray
  local.tee $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  i32.const 1920
  call $~lib/rt/__newArray
  local.tee $8
  i32.store offset=12
  i32.const -1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 5
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
      i32.const 1984
      i32.const 1712
      i32.const 284
      i32.const 18
      call $~lib/wasi/index/abort
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
    i32.const 3
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $0
    i32.store offset=24
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    i32.store offset=28
    local.get $0
    i32.load offset=4
    local.get $4
    i32.store
    local.get $0
    i32.load offset=4
    local.get $3
    i32.store offset=4
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 1
    i32.and
    i32.eqz
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=20
    local.get $8
    local.get $0
    call $~lib/array/Array<~lib/array/Array<i32>>#push
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
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  i32.store offset=28
  local.get $0
  i32.load offset=4
  local.get $4
  i32.store
  local.get $0
  i32.load offset=4
  local.get $3
  i32.store offset=4
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=20
  local.get $8
  local.get $0
  call $~lib/array/Array<~lib/array/Array<i32>>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
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
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
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
  local.get $0
  i32.load offset=12
  local.set $9
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.load offset=12
  local.set $5
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2096
  i32.store offset=8
  i32.const 2096
  local.get $5
  call $~lib/string/String#repeat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2160
  i32.store offset=4
  local.get $2
  i32.const 2160
  call $~lib/string/String#concat
  local.tee $8
  i32.store offset=12
  loop $for-loop|0
   local.get $4
   local.get $9
   i32.lt_s
   if
    i32.const 2192
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 2192
    i32.store offset=16
    i32.const 2160
    local.set $7
    local.get $2
    i32.const 2160
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
      i32.const 2224
      i32.store offset=24
      local.get $2
      i32.const 2256
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
       i32.const 2288
       i32.store offset=28
       i32.const 2288
      else
       i32.const 2256
      end
      local.set $1
      local.get $2
      i32.const 4
      i32.and
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       i32.const 2320
       i32.store offset=24
       i32.const 2320
      else
       i32.const 2224
      end
      local.set $2
      local.get $9
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
        i32.const 2288
        i32.store offset=28
        i32.const 2288
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
        i32.const 2320
        i32.store offset=24
        i32.const 2320
       else
        local.get $2
       end
      else
       global.get $~lib/memory/__stack_pointer
       i32.const 2352
       i32.store offset=24
       i32.const 2352
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
    i32.const 2416
    i32.store offset=4
    i32.const 2420
    local.get $6
    i32.store
    i32.const 2416
    local.get $6
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 2416
    i32.store offset=4
    i32.const 2428
    local.get $7
    i32.store
    i32.const 2416
    local.get $7
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 2416
    i32.store offset=4
    local.get $2
    i32.const 2128
    i32.store offset=8
    i32.const 2416
    i32.const 2128
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $3
    local.get $8
    local.get $2
    call $~lib/string/String#concat
    local.tee $8
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
  i32.const 2288
  i32.store offset=4
  i32.const 2288
  local.get $5
  call $~lib/string/String#repeat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $8
  local.get $0
  call $~lib/string/String#concat
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
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
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 3196
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
    local.set $1
    local.get $0
    i32.const 0
    call $~lib/array/Array<~lib/array/Array<i32>>#__get
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    i32.const 1
    local.get $1
    i32.const 0
    i32.le_s
    local.get $7
    i32.load offset=12
    local.tee $8
    i32.const 0
    i32.le_s
    select
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.const 7
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store offset=4
     i32.const 4
     i32.const 6
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.const 2560
     i32.const 4
     call $~lib/memory/memory.copy
     local.get $0
     local.get $1
     i32.store
     local.get $0
     local.get $1
     i32.const 1
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 2592
    i32.const 2640
    local.get $0
    i32.const 0
    i32.const 0
    call $assembly/mazeFn/isVisited
    select
    local.tee $3
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 3196
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    local.get $1
    local.tee $2
    i32.const 268435455
    i32.gt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.const 2
    i32.shl
    local.tee $1
    i32.const 7
    call $~lib/rt/itcms/__new
    local.tee $7
    i32.store
    local.get $7
    local.get $1
    call $~lib/memory/memory.fill
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=8
    loop $for-loop|0
     local.get $2
     local.get $6
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 3196
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      local.get $8
      i32.const 268435455
      i32.gt_u
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.const 2
      i32.shl
      local.tee $5
      i32.const 6
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store
      local.get $1
      local.get $5
      call $~lib/memory/memory.fill
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=12
      local.get $7
      local.get $6
      local.get $1
      call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__set
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|0
     end
    end
    i32.const 0
    local.set $6
    loop $for-loop|1
     local.get $2
     local.get $6
     i32.gt_s
     if
      i32.const 0
      local.set $5
      loop $for-loop|2
       local.get $5
       local.get $8
       i32.lt_s
       if
        local.get $3
        local.set $1
        local.get $6
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         i32.const 2672
         i32.store offset=16
         local.get $4
         local.get $1
         i32.const 2672
         call $~lib/string/String#concat
         local.tee $1
         i32.store offset=20
        end
        local.get $2
        local.get $6
        i32.const 1
        i32.add
        i32.le_s
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         i32.const 2720
         i32.store offset=16
         local.get $4
         local.get $1
         i32.const 2720
         call $~lib/string/String#concat
         local.tee $1
         i32.store offset=20
        end
        local.get $5
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         i32.const 2768
         i32.store offset=16
         local.get $4
         local.get $1
         i32.const 2768
         call $~lib/string/String#concat
         local.tee $1
         i32.store offset=20
        end
        local.get $8
        local.get $5
        i32.const 1
        i32.add
        i32.le_s
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         i32.const 2816
         i32.store offset=16
         local.get $4
         local.get $1
         i32.const 2816
         call $~lib/string/String#concat
         local.tee $1
         i32.store offset=20
        end
        local.get $0
        local.get $5
        local.get $6
        call $assembly/mazeFn/getNeighbors
        local.tee $4
        i32.const -1
        i32.ne
        if
         local.get $4
         i32.const 2
         i32.and
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $9
          i32.const 2720
          i32.store offset=16
          local.get $9
          local.get $1
          i32.const 2720
          call $~lib/string/String#concat
          local.tee $1
          i32.store offset=20
         end
         local.get $4
         i32.const 4
         i32.and
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $4
          i32.const 2816
          i32.store offset=16
          local.get $4
          local.get $1
          i32.const 2816
          call $~lib/string/String#concat
          local.tee $1
          i32.store offset=20
         end
         local.get $2
         local.get $6
         i32.const 1
         i32.add
         i32.gt_s
         if
          local.get $0
          local.get $5
          local.get $6
          i32.const 1
          i32.add
          call $assembly/mazeFn/getNeighbors
          local.tee $4
          i32.const 8
          i32.and
          i32.const 0
          local.get $4
          i32.const -1
          i32.ne
          select
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           i32.const 2720
           i32.store offset=16
           local.get $4
           local.get $1
           i32.const 2720
           call $~lib/string/String#concat
           local.tee $1
           i32.store offset=20
          end
         end
         local.get $8
         local.get $5
         i32.const 1
         i32.add
         i32.gt_s
         if
          local.get $0
          local.get $5
          i32.const 1
          i32.add
          local.get $6
          call $assembly/mazeFn/getNeighbors
          local.tee $4
          i32.const 1
          i32.and
          i32.const 0
          local.get $4
          i32.const -1
          i32.ne
          select
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           i32.const 2816
           i32.store offset=16
           local.get $4
           local.get $1
           i32.const 2816
           call $~lib/string/String#concat
           local.tee $1
           i32.store offset=20
          end
         end
        end
        local.get $7
        local.get $6
        call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/array/Array<i32>>>#__get
        local.set $4
        global.get $~lib/memory/__stack_pointer
        local.get $4
        i32.store
        local.get $4
        local.get $5
        local.get $1
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__set
        local.get $5
        i32.const 1
        i32.add
        local.set $5
        br $for-loop|2
       end
      end
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 24
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $7
    return
   end
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 1664
  i32.const 2032
  i32.const 90
  i32.const 60
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $start:assembly/index~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3196
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3196
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 2944
   i32.store
   local.get $1
   i32.const 2944
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2896
   i32.store offset=4
   i32.const 2900
   local.get $0
   i32.store
   i32.const 2896
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 2896
   i32.store offset=4
   i32.const 2908
   local.get $1
   i32.store
   i32.const 2896
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 2896
   i32.store offset=4
   local.get $0
   i32.const 2128
   i32.store offset=8
   i32.const 2896
   i32.const 2128
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 19600
  i32.const 19648
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $assembly/index/getTextMaze (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
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
  local.get $0
  i32.const 2
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/array/Array<i32>>>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/utilsFn/printMaze
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
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
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
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
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
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
   i32.const 1392
   i32.const 1712
   i32.const 107
   i32.const 42
   call $~lib/wasi/index/abort
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
   i32.const 1760
   i32.const 1712
   i32.const 111
   i32.const 40
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<~lib/array/Array<i32>>>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.get $1
  i32.le_u
  if
   i32.const 1392
   i32.const 2032
   i32.const 115
   i32.const 41
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 1760
   i32.const 2032
   i32.const 119
   i32.const 40
   call $~lib/wasi/index/abort
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
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
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
   i32.const 1664
   i32.const 1152
   i32.const 333
   i32.const 7
   call $~lib/wasi/index/abort
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
   i32.const 2128
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
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
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
   i32.const 2128
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
 (func $export:assembly/index/generateClasses (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3196
  i32.lt_s
  if
   i32.const 19600
   i32.const 19648
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
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
)
