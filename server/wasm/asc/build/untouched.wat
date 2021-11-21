(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i64_=>_none (func (param i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $assembly/mazeFn/NULL i32 (i32.const -1))
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
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 2496))
 (global $~lib/memory/__data_end i32 (i32.const 2588))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 18972))
 (global $~lib/memory/__heap_base i32 (i32.const 18972))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 188) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 256) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 288) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 316) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 380) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 432) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 524) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 572) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 700) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 764) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 796) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 828) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 876) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 940) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00*\00*\00\n\00*\00*\00\00\00")
 (data (i32.const 972) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00*\00-\00-\00-\00\00\00\00\00")
 (data (i32.const 1004) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1052) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1084) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00*\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1116) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\n\00|\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1148) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00 \00 \00 \00 \00\00\00\00\00")
 (data (i32.const 1180) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00 \00 \00 \00*\00\00\00\00\00")
 (data (i32.const 1212) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00-\00-\00-\00*\00\00\00\00\00")
 (data (i32.const 1244) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00 \00 \00 \00|\00\00\00\00\00")
 (data (i32.const 1276) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00 \00 \00 \00\00\00\00\00\00\00")
 (data (i32.const 1308) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00|\00\n\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1340) ",\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\14\00\00\000\04\00\00\00\00\00\000\05\00\00\00\00\00\000\04\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1388) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00n\00o\00 \00h\00e\00i\00g\00h\00t\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1436) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\04\00\00\00\80\05\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1468) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00n\00o\00 \00w\00i\00d\00t\00h\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1516) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\04\00\00\00\d0\05\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1548) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00c\00e\00l\00l\00 \00v\00i\00s\00i\00t\00e\00d\00\00\00\00\00")
 (data (i32.const 1596) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00c\00e\00l\00l\00\00\00\00\00")
 (data (i32.const 1628) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00 \00w\00a\00l\00l\00-\00t\00o\00p\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1676) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00 \00w\00a\00l\00l\00-\00b\00o\00t\00t\00o\00m\00\00\00\00\00")
 (data (i32.const 1724) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00 \00w\00a\00l\00l\00-\00l\00e\00f\00t\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1772) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00 \00w\00a\00l\00l\00-\00r\00i\00g\00h\00t\00\00\00\00\00\00\00")
 (data (i32.const 1820) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00t\00o\00p\00\00\00\00\00\00\00")
 (data (i32.const 1852) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00r\00i\00g\00h\00t\00\00\00")
 (data (i32.const 1884) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00b\00o\00t\00t\00o\00m\00")
 (data (i32.const 1916) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00l\00e\00f\00t\00\00\00\00\00")
 (data (i32.const 1948) ",\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\000\07\00\00P\07\00\00p\07\00\00\90\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1996) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2028) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00w\00a\00l\00l\00-\00\00\00")
 (data (i32.const 2060) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2092) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00c\00e\00l\00l\00 \00v\00i\00s\00i\00t\00e\00d\00 \00\00\00")
 (data (i32.const 2140) ",\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\1c\00\00\00@\08\00\00\00\00\00\000\04\00\00\00\00\00\000\04\00\00\00\00\00\000\04\00\00")
 (data (i32.const 2188) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00 \00s\00t\00u\00c\00k\00")
 (data (i32.const 2220) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00 \00c\00u\00r\00r\00e\00n\00t\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2268) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00g\00r\00i\00d\00[\00y\00]\00[\00x\00]\00 \00\00\00\00\00\00\00")
 (data (i32.const 2316) ",\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\14\00\00\00\f0\08\00\00\00\00\00\000\04\00\00\00\00\00\000\04\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2364) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data (i32.const 2428) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data (i32.const 2496) "\0b\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\t\00\00\02\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\04A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\04A\00\00\00\00\00\00\04A\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "Int32Array_ID" (global $assembly/index/Int32Array_ID))
 (export "ArrayInt32Arrays_ID" (global $assembly/index/ArrayInt32Arrays_ID))
 (export "ArrayOfStrings_ID" (global $assembly/index/ArrayOfStrings_ID))
 (export "Array2DStrings_ID" (global $assembly/index/Array2DStrings_ID))
 (export "getTextMaze" (func $assembly/index/getTextMaze))
 (export "getMazeDescriptor" (func $assembly/index/getMazeDescriptor))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "generateClasses" (func $export:assembly/index/generateClasses))
 (export "updateClasses" (func $export:assembly/index/updateClasses))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:next
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $1
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $2
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 208
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 20
    i32.add
    local.get $0
    call $~lib/rt/__visit_members
    local.get $2
    call $~lib/rt/itcms/Object#get:next
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $0
   i32.load offset=8
   i32.const 0
   i32.eq
   if (result i32)
    local.get $0
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 208
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 336
   i32.const 400
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 208
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $1
  loop $while-continue|0
   local.get $1
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    i32.load
    local.get $0
    call $~lib/rt/itcms/__visit
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   local.get $3
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $6
   i32.const 31
   local.get $6
   i32.clz
   i32.sub
   local.set $4
   local.get $6
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $8
  local.get $1
  i32.load offset=8
  local.set $9
  local.get $8
  if
   local.get $8
   local.get $9
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $9
  if
   local.get $9
   local.get $8
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $6
  local.get $5
  local.set $7
  local.get $10
  local.get $6
  i32.const 4
  i32.shl
  local.get $7
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $6
   local.get $9
   local.set $7
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $6
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=96
   local.get $9
   i32.eqz
   if
    local.get $0
    local.set $6
    local.get $4
    local.set $7
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $0
    local.set $7
    local.get $4
    local.set $11
    local.get $6
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $6
    local.set $10
    local.get $7
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $6
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
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
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.add
   local.get $3
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $4
   local.get $4
   i32.load
   local.set $5
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.sub
   i32.load
   local.set $3
   local.get $3
   i32.load
   local.set $6
   i32.const 1
   drop
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/removeBlock
   local.get $3
   local.set $1
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  i32.const 1
  drop
  local.get $7
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 4
   i32.shr_u
   local.set $9
  else
   local.get $7
   local.tee $3
   i32.const 1073741820
   local.tee $6
   local.get $3
   local.get $6
   i32.lt_u
   select
   local.set $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $8
   local.get $3
   local.get $8
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  i32.const 1
  drop
  local.get $8
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $9
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $10
  local.get $8
  local.set $3
  local.get $9
  local.set $6
  local.get $10
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $8
  local.set $10
  local.get $9
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $10
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $8
  local.set $12
  local.get $0
  local.set $3
  local.get $8
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  local.set $10
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $10
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
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
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
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
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
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
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $0
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $0
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
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
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $2
     local.get $2
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $2
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $2
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $2
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 208
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt
  (local $0 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $0
  loop $do-loop|0
   local.get $0
   call $~lib/rt/itcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
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
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 144
   i32.const 480
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 480
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
  local.get $1
  i32.const 536870910
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
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
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $6
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   i32.const 4
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   i32.const 12
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 8
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   i32.const 28
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 24
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 20
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 16
   i32.sub
   local.get $8
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 144
   i32.const 208
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.set $3
  local.get $3
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $3
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  local.get $3
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/itcms/Object#get:color
   local.set $5
   local.get $5
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $4
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $5
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
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
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
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
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
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
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
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
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
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
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
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
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
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
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
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
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__newBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $0
   call $~lib/memory/memory.copy
  end
  local.get $3
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
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $2
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $1
  local.get $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 32
    i32.const 544
    i32.const 18
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $5
   local.get $1
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $6
   local.get $3
   if
    local.get $4
    i32.const 1
    i32.shl
    local.tee $7
    i32.const 1073741820
    local.tee $8
    local.get $7
    local.get $8
    i32.lt_u
    select
    local.tee $8
    local.get $6
    local.tee $7
    local.get $8
    local.get $7
    i32.gt_u
    select
    local.set $6
   end
   local.get $5
   local.get $6
   call $~lib/rt/itcms/__renew
   local.set $8
   local.get $8
   local.get $4
   i32.add
   i32.const 0
   local.get $6
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $8
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $8
    i32.store offset=4
    local.get $0
    local.get $8
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $6
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 336
    i32.const 544
    i32.const 123
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<~lib/typedarray/Int32Array>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
 )
 (func $~lib/typedarray/Int32Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 720
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
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 720
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
 (func $~lib/math/murmurHash3 (param $0 i64) (result i64)
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  i64.const -49064778989728563
  i64.mul
  local.set $0
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  i64.const -4265267296055464877
  i64.mul
  local.set $0
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
 )
 (func $~lib/math/splitMix32 (param $0 i32) (result i32)
  local.get $0
  i32.const 1831565813
  i32.add
  local.set $0
  local.get $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 1
  i32.or
  i32.mul
  local.set $0
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  i32.const 7
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  local.set $0
  local.get $0
  local.get $0
  i32.const 14
  i32.shr_u
  i32.xor
 )
 (func $~lib/math/NativeMath.seedRandom (param $0 i64)
  local.get $0
  i64.const 0
  i64.eq
  if
   i64.const -7046029254386353131
   local.set $0
  end
  local.get $0
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state1_64
  local.get $0
  i32.wrap_i64
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state1_32
  i32.const 1
  global.set $~lib/math/random_seeded
 )
 (func $~lib/math/NativeMath.random (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
  end
  global.get $~lib/math/random_state0_64
  local.set $0
  global.get $~lib/math/random_state1_64
  local.set $1
  local.get $1
  global.set $~lib/math/random_state0_64
  local.get $0
  local.get $0
  i64.const 23
  i64.shl
  i64.xor
  local.set $0
  local.get $0
  local.get $0
  i64.const 17
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  local.get $1
  i64.xor
  local.set $0
  local.get $0
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  global.set $~lib/math/random_state1_64
  local.get $1
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  local.set $2
  local.get $2
  f64.reinterpret_i64
  f64.const 1
  f64.sub
 )
 (func $assembly/utilsFn/getRand (param $0 i32) (result i32)
  (local $1 f64)
  call $~lib/math/NativeMath.random
  local.get $0
  f64.convert_i32_s
  f64.mul
  f32.demote_f64
  f64.promote_f32
  local.set $1
  local.get $1
  f64.floor
  i32.trunc_f64_s
 )
 (func $~lib/array/Array<i32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
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
  call $~lib/array/Array<i32>#set:length_
  local.get $3
 )
 (func $~lib/array/Array<i32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 848
   i32.const 544
   i32.const 284
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#set:length_
  local.get $2
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
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
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:length_
  local.get $3
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
 (func $~lib/typedarray/Int32Array#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $assembly/mazeFn/getVisitables (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $3
  global.get $assembly/mazeFn/NULL
  i32.eq
  if
   global.get $assembly/mazeFn/NULL
   return
  end
  local.get $3
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 4
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $3
    i32.const 1
    i32.const 3
    local.get $5
    i32.sub
    i32.shl
    i32.and
    if
     block $break|1
      block $case4|1
       block $case3|1
        block $case2|1
         block $case1|1
          block $case0|1
           local.get $5
           local.set $7
           local.get $7
           i32.const 0
           i32.eq
           br_if $case0|1
           local.get $7
           i32.const 1
           i32.eq
           br_if $case1|1
           local.get $7
           i32.const 2
           i32.eq
           br_if $case2|1
           local.get $7
           i32.const 3
           i32.eq
           br_if $case3|1
           br $case4|1
          end
          local.get $0
          local.get $1
          local.get $2
          i32.const 1
          i32.sub
          call $assembly/mazeFn/isVisited
          local.set $7
          local.get $7
          if
           local.get $4
           i32.const 247
           i32.and
           local.set $4
          end
          br $break|1
         end
         local.get $0
         local.get $1
         i32.const 1
         i32.add
         local.get $2
         call $assembly/mazeFn/isVisited
         local.set $7
         local.get $7
         if
          local.get $4
          i32.const 250
          i32.and
          local.set $4
         end
         br $break|1
        end
        local.get $0
        local.get $1
        local.get $2
        i32.const 1
        i32.add
        call $assembly/mazeFn/isVisited
        local.set $7
        local.get $7
        if
         local.get $4
         i32.const 253
         i32.and
         local.set $4
        end
        br $break|1
       end
       local.get $0
       local.get $1
       i32.const 1
       i32.sub
       local.get $2
       call $assembly/mazeFn/isVisited
       local.set $7
       local.get $7
       if
        local.get $4
        i32.const 254
        i32.and
        local.set $4
       end
       br $break|1
      end
      br $break|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $assembly/mazeFn/getNumVisitables (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   i32.const 4
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $0
    i32.const 1
    local.get $2
    i32.shl
    i32.and
    if
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/memory/memory.repeat (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  local.set $4
  local.get $2
  local.get $3
  i32.mul
  local.set $5
  loop $while-continue|0
   local.get $4
   local.get $5
   i32.lt_u
   local.set $6
   local.get $6
   if
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $2
    call $~lib/memory/memory.copy
    local.get $4
    local.get $2
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $0
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $1
  call $~lib/util/string/joinStringArray
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#get:length
  i32.ge_u
  if
   i32.const 336
   i32.const 896
   i32.const 130
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__uset
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  i32.ge_u
  if
   i32.const 336
   i32.const 896
   i32.const 130
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
 )
 (func $assembly/index/generateClasses (param $0 i32) (result i32)
  local.get $0
  call $assembly/utilsFn/generateClassLists
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 544
   i32.const 107
   i32.const 42
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
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
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
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/string/String>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<~lib/string/String>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $3
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $2
  local.get $3
  local.get $1
  call $~lib/util/string/joinStringArray
  return
 )
 (func $~lib/array/Array<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 336
    i32.const 544
    i32.const 123
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<~lib/string/String>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/string/String>#__uset
 )
 (func $assembly/utilsFn/updateClassLists (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   local.get $1
   local.get $2
   call $assembly/utilsFn/updateForward
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $assembly/utilsFn/updateBackward
 )
 (func $assembly/index/updateClasses (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/utilsFn/updateClassLists
 )
 (func $assembly/index/getMazeDescriptor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $assembly/rbtFn/RecursiveBacktracker
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $1
   local.get $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 2384
    i32.const 208
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 2448
   i32.const 208
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  (local $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    local.set $0
    local.get $0
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
   i32.const 0
   i32.ne
   local.set $0
   local.get $0
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
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 336
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 848
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 592
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 144
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2384
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2448
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/typedarray/Int32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
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
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__visit
 )
 (func $~lib/array/Array<~lib/string/String>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
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
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__visit
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
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
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__visit
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__visit
 )
 (func $~lib/array/Array<i32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>
    block $~lib/staticarray/StaticArray<~lib/string/String>
     block $~lib/array/Array<i32>
      block $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>
       block $~lib/array/Array<~lib/array/Array<~lib/string/String>>
        block $~lib/array/Array<~lib/string/String>
         block $~lib/array/Array<~lib/typedarray/Int32Array>
          block $~lib/typedarray/Int32Array
           block $~lib/arraybuffer/ArrayBufferView
            block $~lib/string/String
             block $~lib/arraybuffer/ArrayBuffer
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/typedarray/Int32Array $~lib/array/Array<~lib/typedarray/Int32Array> $~lib/array/Array<~lib/string/String> $~lib/array/Array<~lib/array/Array<~lib/string/String>> $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>> $~lib/array/Array<i32> $~lib/staticarray/StaticArray<~lib/string/String> $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>> $invalid
             end
             return
            end
            return
           end
           local.get $0
           local.get $1
           call $~lib/arraybuffer/ArrayBufferView~visit
           return
          end
          local.get $0
          local.get $1
          call $~lib/typedarray/Int32Array~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<~lib/typedarray/Int32Array>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<~lib/string/String>~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<~lib/array/Array<~lib/string/String>>~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<i32>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/staticarray/StaticArray<~lib/string/String>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>~visit
   return
  end
  unreachable
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 256
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 288
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 432
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 18992
   i32.const 19040
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $assembly/mazeFn/initGrid (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/typedarray/Int32Array>#constructor
  local.tee $2
  i32.store
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $2
    local.get $3
    i32.const 0
    local.get $0
    call $~lib/typedarray/Int32Array#constructor
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__set
    i32.const 0
    local.set $5
    loop $for-loop|1
     local.get $5
     local.get $0
     i32.lt_s
     local.set $6
     local.get $6
     if
      local.get $2
      local.get $5
      local.get $3
      call $assembly/mazeFn/createCell
      drop
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $for-loop|1
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $assembly/mazeFn/setVisited (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  i32.const 1
  i32.const 8
  i32.shl
  i32.or
  call $~lib/typedarray/Int32Array#__set
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/mazeFn/isVisited (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
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
  i32.const 1
  i32.const 8
  i32.shl
  i32.and
  i32.eqz
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/mazeFn/getNeighbors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  local.get $3
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const 240
   i32.and
   i32.const 4
   i32.shr_s
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  i32.const 0
  local.set $4
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
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $4
   i32.const 1
   i32.const 3
   i32.shl
   i32.or
   local.set $4
  end
  local.get $1
  i32.const 1
  i32.add
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/typedarray/Int32Array#get:length
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.get $2
   call $assembly/mazeFn/isVisited
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $4
   i32.const 1
   i32.const 2
   i32.shl
   i32.or
   local.set $4
  end
  local.get $2
  i32.const 1
  i32.add
  local.get $0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#get:length
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   call $assembly/mazeFn/isVisited
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $4
   i32.const 1
   i32.const 1
   i32.shl
   i32.or
   local.set $4
  end
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
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $4
   i32.const 1
   i32.or
   local.set $4
  end
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $1
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.get $4
  i32.const 4
  i32.shl
  i32.const 1
  i32.add
  i32.or
  call $~lib/typedarray/Int32Array#__set
  local.get $4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/mazeFn/removeNeighbor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
        local.set $4
        local.get $4
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $4
        i32.const 1
        i32.eq
        br_if $case1|0
        local.get $4
        i32.const 2
        i32.eq
        br_if $case2|0
        local.get $4
        i32.const 3
        i32.eq
        br_if $case3|0
        br $case4|0
       end
       local.get $0
       local.get $2
       call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $1
       local.get $0
       local.get $2
       call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=4
       local.get $5
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
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      local.get $1
      local.get $0
      local.get $2
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
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
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     local.get $5
     local.get $1
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
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
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $1
    call $~lib/typedarray/Int32Array#__get
    i32.const -17
    i32.and
    call $~lib/typedarray/Int32Array#__set
    br $break|0
   end
   global.get $assembly/mazeFn/NULL
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/mazeFn/getNext (param $0 i32) (param $1 i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  call $assembly/mazeFn/getX
  local.set $2
  local.get $1
  call $assembly/mazeFn/getY
  local.set $3
  local.get $0
  local.get $2
  local.get $3
  call $assembly/mazeFn/getNeighbors
  local.set $4
  local.get $0
  local.get $2
  local.get $3
  local.get $4
  call $assembly/mazeFn/getVisitables
  local.set $5
  local.get $5
  global.get $assembly/mazeFn/NULL
  i32.eq
  if
   global.get $assembly/mazeFn/NULL
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  local.get $5
  call $assembly/mazeFn/getNumVisitables
  local.set $6
  local.get $6
  call $assembly/utilsFn/getRand
  local.set $7
  i32.const -1
  local.set $8
  i32.const 0
  local.set $9
  block $for-break0
   loop $for-loop|0
    local.get $9
    i32.const 4
    i32.lt_s
    local.set $10
    local.get $10
    if
     local.get $5
     i32.const 1
     i32.const 3
     local.get $9
     i32.sub
     i32.shl
     i32.and
     if
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      local.get $8
      local.get $7
      i32.eq
      if
       br $for-break0
      end
     end
     local.get $9
     i32.const 1
     i32.add
     local.set $9
     br $for-loop|0
    end
   end
  end
  block $case4|1
   block $case3|1
    block $case2|1
     block $case1|1
      block $case0|1
       local.get $9
       local.set $10
       local.get $10
       i32.const 0
       i32.eq
       br_if $case0|1
       local.get $10
       i32.const 1
       i32.eq
       br_if $case1|1
       local.get $10
       i32.const 2
       i32.eq
       br_if $case2|1
       local.get $10
       i32.const 3
       i32.eq
       br_if $case3|1
       br $case4|1
      end
      local.get $0
      local.get $2
      local.get $3
      i32.const 1
      i32.sub
      call $assembly/mazeFn/setVisited
      drop
      local.get $0
      local.get $2
      local.get $3
      i32.const 0
      call $assembly/mazeFn/removeNeighbor
      drop
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
      local.set $11
      global.get $~lib/memory/__stack_pointer
      local.get $11
      i32.store
      local.get $11
      local.get $2
      call $~lib/typedarray/Int32Array#__get
      local.set $11
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $11
      return
     end
     local.get $0
     local.get $2
     i32.const 1
     i32.add
     local.get $3
     call $assembly/mazeFn/setVisited
     drop
     local.get $0
     local.get $2
     local.get $3
     i32.const 1
     call $assembly/mazeFn/removeNeighbor
     drop
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $11
     i32.store
     local.get $11
     local.get $2
     i32.const 1
     i32.add
     call $~lib/typedarray/Int32Array#__get
     local.set $11
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $11
     return
    end
    local.get $0
    local.get $2
    local.get $3
    i32.const 1
    i32.add
    call $assembly/mazeFn/setVisited
    drop
    local.get $0
    local.get $2
    local.get $3
    i32.const 2
    call $assembly/mazeFn/removeNeighbor
    drop
    local.get $0
    local.get $3
    i32.const 1
    i32.add
    call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store
    local.get $11
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    local.set $11
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $11
    return
   end
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.get $3
   call $assembly/mazeFn/setVisited
   drop
   local.get $0
   local.get $2
   local.get $3
   i32.const 3
   call $assembly/mazeFn/removeNeighbor
   drop
   local.get $0
   local.get $3
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store
   local.get $11
   local.get $2
   i32.const 1
   i32.sub
   call $~lib/typedarray/Int32Array#__get
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  global.get $assembly/mazeFn/NULL
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
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
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  local.get $0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#get:length
  local.set $1
  local.get $1
  i32.const 0
  i32.le_s
  if
   i32.const 960
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/typedarray/Int32Array#get:length
  local.set $2
  local.get $1
  i32.const 0
  i32.le_s
  if
   i32.const 960
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 992
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $2
  call $~lib/string/String#repeat
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  i32.const 1104
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/string/String#concat
  local.tee $3
  i32.store offset=12
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   local.set $5
   local.get $5
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1136
    local.tee $6
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 1104
    local.tee $7
    i32.store offset=20
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     local.get $2
     i32.lt_s
     local.set $9
     local.get $9
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 1168
      local.tee $10
      i32.store offset=24
      global.get $~lib/memory/__stack_pointer
      i32.const 1200
      local.tee $11
      i32.store offset=28
      local.get $0
      local.get $8
      local.get $4
      call $assembly/mazeFn/getNeighbors
      local.set $12
      local.get $12
      i32.const 1
      i32.const 1
      i32.shl
      i32.and
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 1232
       local.tee $11
       i32.store offset=28
      end
      local.get $12
      i32.const 1
      i32.const 2
      i32.shl
      i32.and
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 1264
       local.tee $10
       i32.store offset=24
      end
      local.get $4
      i32.const 1
      i32.add
      local.get $1
      i32.lt_s
      if
       local.get $0
       local.get $8
       local.get $4
       i32.const 1
       i32.add
       call $assembly/mazeFn/getNeighbors
       local.set $13
       local.get $13
       i32.const 1
       i32.const 3
       i32.shl
       i32.and
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 1232
        local.tee $11
        i32.store offset=28
       end
       global.get $~lib/memory/__stack_pointer
       local.get $7
       local.get $11
       call $~lib/string/String.__concat
       local.tee $7
       i32.store offset=20
      end
      local.get $8
      i32.const 1
      i32.add
      local.get $2
      i32.lt_s
      if
       local.get $0
       local.get $8
       i32.const 1
       i32.add
       local.get $4
       call $assembly/mazeFn/getNeighbors
       local.set $13
       local.get $13
       i32.const 1
       i32.and
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 1264
        local.tee $10
        i32.store offset=24
       end
      else
       global.get $~lib/memory/__stack_pointer
       i32.const 1296
       local.tee $10
       i32.store offset=24
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      local.get $10
      call $~lib/string/String.__concat
      local.tee $6
      i32.store offset=16
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    local.get $6
    local.set $8
    local.get $7
    local.set $9
    i32.const 1360
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    i32.const 1
    local.get $8
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 1360
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    i32.const 3
    local.get $9
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 1360
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    i32.const 1072
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=8
    local.get $14
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/string/String.__concat
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
  local.get $3
  i32.const 1232
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  local.get $2
  call $~lib/string/String#repeat
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/string/String.__concat
  local.tee $3
  i32.store offset=12
  local.get $3
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $assembly/index/getTextMaze (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  call $assembly/rbtFn/RecursiveBacktracker
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/utilsFn/printMaze
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
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
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  local.get $0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#get:length
  local.set $1
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store
  local.get $12
  call $~lib/typedarray/Int32Array#get:length
  local.set $2
  local.get $1
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 10
   i32.const 0
   call $~lib/rt/__newBuffer
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 4
   i32.const 9
   i32.const 1456
   call $~lib/rt/__newBuffer
   call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__uset
   local.get $3
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  local.get $2
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 10
   i32.const 0
   call $~lib/rt/__newBuffer
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 4
   i32.const 9
   i32.const 1536
   call $~lib/rt/__newBuffer
   call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__uset
   local.get $3
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  i32.const 0
  call $assembly/mazeFn/isVisited
  if (result i32)
   i32.const 1568
  else
   i32.const 1616
  end
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#constructor
  local.tee $4
  i32.store offset=8
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $1
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $4
    local.get $5
    i32.const 0
    local.get $2
    call $~lib/staticarray/StaticArray<~lib/string/String>#constructor
    local.set $12
    global.get $~lib/memory/__stack_pointer
    local.get $12
    i32.store offset=12
    local.get $12
    call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   local.get $1
   i32.lt_s
   local.set $6
   local.get $6
   if
    i32.const 0
    local.set $7
    loop $for-loop|2
     local.get $7
     local.get $2
     i32.lt_s
     local.set $8
     local.get $8
     if
      block $for-continue|2
       local.get $3
       local.set $9
       local.get $5
       i32.const 0
       i32.eq
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1648
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store offset=16
        local.get $12
        call $~lib/string/String#concat
        local.tee $9
        i32.store offset=20
       end
       local.get $5
       i32.const 1
       i32.add
       local.get $1
       i32.ge_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1696
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store offset=16
        local.get $12
        call $~lib/string/String#concat
        local.tee $9
        i32.store offset=20
       end
       local.get $7
       i32.const 0
       i32.eq
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1744
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store offset=16
        local.get $12
        call $~lib/string/String#concat
        local.tee $9
        i32.store offset=20
       end
       local.get $7
       i32.const 1
       i32.add
       local.get $2
       i32.ge_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1792
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store offset=16
        local.get $12
        call $~lib/string/String#concat
        local.tee $9
        i32.store offset=20
       end
       local.get $0
       local.get $7
       local.get $5
       call $assembly/mazeFn/getNeighbors
       local.set $10
       local.get $10
       global.get $assembly/mazeFn/NULL
       i32.eq
       if
        local.get $4
        local.get $5
        call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__get
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store
        local.get $12
        local.get $7
        local.get $9
        call $~lib/staticarray/StaticArray<~lib/string/String>#__set
        br $for-continue|2
       end
       local.get $10
       i32.const 1
       i32.const 1
       i32.shl
       i32.and
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1696
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store offset=16
        local.get $12
        call $~lib/string/String#concat
        local.tee $9
        i32.store offset=20
       end
       local.get $10
       i32.const 1
       i32.const 2
       i32.shl
       i32.and
       if
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.const 1792
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store offset=16
        local.get $12
        call $~lib/string/String#concat
        local.tee $9
        i32.store offset=20
       end
       local.get $5
       i32.const 1
       i32.add
       local.get $1
       i32.lt_s
       if
        local.get $0
        local.get $7
        local.get $5
        i32.const 1
        i32.add
        call $assembly/mazeFn/getNeighbors
        local.set $11
        local.get $11
        global.get $assembly/mazeFn/NULL
        i32.ne
        if (result i32)
         local.get $11
         i32.const 1
         i32.const 3
         i32.shl
         i32.and
        else
         i32.const 0
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.const 1696
         local.set $12
         global.get $~lib/memory/__stack_pointer
         local.get $12
         i32.store offset=16
         local.get $12
         call $~lib/string/String#concat
         local.tee $9
         i32.store offset=20
        end
       end
       local.get $7
       i32.const 1
       i32.add
       local.get $2
       i32.lt_s
       if
        local.get $0
        local.get $7
        i32.const 1
        i32.add
        local.get $5
        call $assembly/mazeFn/getNeighbors
        local.set $11
        local.get $11
        global.get $assembly/mazeFn/NULL
        i32.ne
        if (result i32)
         local.get $11
         i32.const 1
         i32.and
        else
         i32.const 0
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.const 1792
         local.set $12
         global.get $~lib/memory/__stack_pointer
         local.get $12
         i32.store offset=16
         local.get $12
         call $~lib/string/String#concat
         local.tee $9
         i32.store offset=20
        end
       end
       local.get $4
       local.get $5
       call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__get
       local.set $12
       global.get $~lib/memory/__stack_pointer
       local.get $12
       i32.store
       local.get $12
       local.get $7
       local.get $9
       call $~lib/staticarray/StaticArray<~lib/string/String>#__set
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|2
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $4
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $assembly/mazeFn/neighsToStrings (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 2
  i32.const 5
  i32.const 1968
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 5
  i32.const 2016
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=4
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 4
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $0
    i32.const 1
    i32.const 3
    local.get $1
    i32.sub
    i32.shl
    i32.and
    if
     local.get $3
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $5
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/utilsFn/getClassList (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.tee $4
  i32.store
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $3
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $4
    i32.const 2048
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=4
    local.get $9
    local.get $3
    local.get $5
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=8
    local.get $9
    call $~lib/string/String#concat
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=4
    local.get $9
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 2080
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/array/Array<~lib/string/String>#join
  local.tee $5
  i32.store offset=12
  local.get $5
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1744
  else
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=16
   local.get $9
   call $~lib/typedarray/Int32Array#get:length
   i32.const 1
   i32.sub
   i32.eq
   if (result i32)
    i32.const 1792
   else
    i32.const 1072
   end
  end
  local.tee $7
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1648
  else
   local.get $2
   local.get $0
   call $~lib/array/Array<~lib/typedarray/Int32Array>#get:length
   i32.const 1
   i32.sub
   i32.eq
   if (result i32)
    i32.const 1696
   else
    i32.const 1072
   end
  end
  local.tee $8
  i32.store offset=24
  i32.const 2160
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=16
  local.get $9
  i32.const 1
  local.get $6
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 2160
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=16
  local.get $9
  i32.const 3
  local.get $7
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 2160
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=16
  local.get $9
  i32.const 5
  local.get $8
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 2160
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=16
  local.get $9
  i32.const 1072
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $assembly/utilsFn/updateForward (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=16
  local.get $2
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $2
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $4
  local.get $4
  call $assembly/mazeFn/getX
  local.set $5
  local.get $4
  call $assembly/mazeFn/getY
  local.set $6
  local.get $0
  local.get $5
  local.get $6
  call $assembly/mazeFn/getNeighbors
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  call $assembly/mazeFn/neighsToStrings
  local.tee $8
  i32.store
  local.get $3
  if
   local.get $3
   call $assembly/mazeFn/getX
   local.set $9
   local.get $3
   call $assembly/mazeFn/getY
   local.set $10
   local.get $0
   local.get $9
   local.get $10
   call $assembly/mazeFn/getNeighbors
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   call $assembly/mazeFn/neighsToStrings
   local.tee $12
   i32.store offset=4
   local.get $1
   local.get $10
   call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=8
   local.get $13
   local.get $9
   local.get $0
   local.get $9
   local.get $10
   local.get $12
   call $assembly/utilsFn/getClassList
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=12
   local.get $13
   call $~lib/array/Array<~lib/string/String>#__set
   local.get $5
   local.get $9
   i32.eq
   if (result i32)
    local.get $6
    local.get $10
    i32.eq
   else
    i32.const 0
   end
   if
    local.get $1
    local.get $6
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=8
    local.get $13
    local.get $5
    local.get $0
    local.get $5
    local.get $6
    local.get $8
    call $assembly/utilsFn/getClassList
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=12
    local.get $13
    i32.const 2208
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=16
    local.get $13
    call $~lib/string/String#concat
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $13
    i32.store offset=12
    local.get $13
    call $~lib/array/Array<~lib/string/String>#__set
   end
  else
   local.get $1
   local.get $6
   call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=8
   local.get $13
   local.get $5
   local.get $0
   local.get $5
   local.get $6
   local.get $8
   call $assembly/utilsFn/getClassList
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=12
   local.get $13
   i32.const 2240
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=16
   local.get $13
   call $~lib/string/String#concat
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=12
   local.get $13
   call $~lib/array/Array<~lib/string/String>#__set
  end
  local.get $1
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
 )
 (func $assembly/utilsFn/updateBackward (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=24
  local.get $2
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $2
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $4
  local.get $2
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $5
  local.get $4
  call $assembly/mazeFn/getX
  local.set $6
  local.get $4
  call $assembly/mazeFn/getY
  local.set $7
  local.get $3
  i32.eqz
  if
   local.get $1
   local.get $7
   call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $6
   i32.const 1616
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/array/Array<~lib/string/String>#__set
   local.get $1
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $3
  call $assembly/mazeFn/getX
  local.set $8
  local.get $3
  call $assembly/mazeFn/getY
  local.set $9
  local.get $0
  local.get $8
  local.get $9
  call $assembly/mazeFn/getNeighbors
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  call $assembly/mazeFn/neighsToStrings
  local.tee $11
  i32.store offset=8
  local.get $1
  local.get $9
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  local.get $8
  local.get $0
  local.get $8
  local.get $9
  local.get $11
  call $assembly/utilsFn/getClassList
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  i32.const 2240
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=12
  local.get $14
  call $~lib/string/String#concat
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/array/Array<~lib/string/String>#__set
  local.get $6
  local.get $8
  i32.eq
  if (result i32)
   local.get $7
   local.get $9
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $1
   local.get $9
   call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $8
   local.get $1
   local.get $9
   call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=16
   local.get $14
   local.get $8
   call $~lib/array/Array<~lib/string/String>#__get
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   i32.const 2208
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=12
   local.get $14
   call $~lib/string/String#concat
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/array/Array<~lib/string/String>#__set
  else
   local.get $5
   if
    local.get $1
    local.get $7
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store
    local.get $14
    local.get $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1744
    else
     local.get $6
     local.get $0
     i32.const 0
     call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=4
     local.get $14
     call $~lib/typedarray/Int32Array#get:length
     i32.const 1
     i32.sub
     i32.eq
     if (result i32)
      i32.const 1792
     else
      i32.const 1072
     end
    end
    local.tee $12
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1648
    else
     local.get $7
     local.get $0
     call $~lib/array/Array<~lib/typedarray/Int32Array>#get:length
     i32.const 1
     i32.sub
     i32.eq
     if (result i32)
      i32.const 1696
     else
      i32.const 1072
     end
    end
    local.tee $13
    i32.store offset=24
    i32.const 2336
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    i32.const 1
    local.get $12
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 2336
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    i32.const 3
    local.get $13
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 2336
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    i32.const 1072
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=12
    local.get $14
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/array/Array<~lib/string/String>#__set
   else
    local.get $0
    local.get $6
    local.get $7
    call $assembly/mazeFn/getNeighbors
    local.set $13
    global.get $~lib/memory/__stack_pointer
    local.get $13
    call $assembly/mazeFn/neighsToStrings
    local.tee $12
    i32.store offset=20
    local.get $1
    local.get $7
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store
    local.get $14
    local.get $6
    local.get $0
    local.get $6
    local.get $7
    local.get $12
    call $assembly/utilsFn/getClassList
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/array/Array<~lib/string/String>#__set
   end
  end
  local.get $1
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $1
  i32.const 1073741820
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 80
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/typedarray/Int32Array#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.store
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/rt/__newBuffer
  local.tee $5
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  local.get $5
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $6
  local.get $5
  i32.store offset=4
  local.get $6
  local.get $4
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $6
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 544
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.const 0
  local.get $4
  call $~lib/memory/memory.fill
  local.get $0
  local.get $5
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/typedarray/Int32Array>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<~lib/typedarray/Int32Array>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 544
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
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 592
   i32.const 544
   i32.const 111
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/mazeFn/createCell (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Int32Array>#__get
  local.tee $3
  i32.store
  local.get $3
  local.get $1
  local.tee $4
  local.get $1
  i32.const 24
  i32.shl
  local.get $2
  i32.const 16
  i32.shl
  i32.add
  call $~lib/typedarray/Int32Array#__set
  local.get $3
  local.get $4
  call $~lib/typedarray/Int32Array#__get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
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
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.le_s
  end
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 7
   i32.const 0
   call $~lib/rt/__newBuffer
   local.tee $2
   i32.store
   local.get $2
   i32.const 0
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 4
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=4
   local.tee $4
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#constructor
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
   local.get $2
   i32.const 1
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 4
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#constructor
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
   local.get $2
   i32.const 2
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 4
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=4
   local.tee $4
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#constructor
   call $~lib/array/Array<~lib/typedarray/Int32Array>#__uset
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
   local.get $2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $assembly/mazeFn/initGrid
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 784
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 4
  i32.const 816
  call $~lib/rt/__newArray
  local.tee $5
  i32.store offset=12
  global.get $assembly/mazeFn/NULL
  local.set $4
  global.get $assembly/mazeFn/NULL
  local.set $6
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 7
  i32.const 0
  call $~lib/rt/__newBuffer
  local.tee $7
  i32.store offset=16
  local.get $7
  i32.const 0
  local.get $0
  local.get $1
  call $assembly/mazeFn/initGrid
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
  local.get $7
  i32.const 1
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
  local.get $7
  i32.const 2
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__uset
  local.get $7
  local.tee $7
  i32.store offset=16
  local.get $0
  call $assembly/utilsFn/getRand
  local.set $8
  local.get $1
  call $assembly/utilsFn/getRand
  local.set $9
  local.get $2
  local.get $8
  local.get $9
  call $assembly/mazeFn/setVisited
  local.set $6
  i32.const 1
  local.set $10
  local.get $3
  local.get $6
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.mul
  local.set $11
  loop $while-continue|0
   local.get $10
   local.get $11
   i32.lt_s
   if (result i32)
    local.get $3
    call $~lib/array/Array<i32>#get:length
   else
    i32.const 0
   end
   local.set $12
   local.get $12
   if
    local.get $6
    global.get $assembly/mazeFn/NULL
    i32.eq
    if
     local.get $3
     call $~lib/array/Array<i32>#pop
     local.set $6
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 3
    call $~lib/typedarray/Int32Array#constructor
    local.tee $13
    i32.store offset=20
    local.get $13
    i32.const 0
    local.get $4
    call $~lib/typedarray/Int32Array#__set
    local.get $13
    i32.const 1
    local.get $6
    call $~lib/typedarray/Int32Array#__set
    local.get $13
    i32.const 2
    local.get $6
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     i32.const 1
    end
    call $~lib/typedarray/Int32Array#__set
    local.get $5
    local.get $13
    call $~lib/array/Array<~lib/typedarray/Int32Array>#push
    drop
    local.get $6
    local.set $4
    local.get $2
    local.get $6
    call $assembly/mazeFn/getNext
    local.set $6
    local.get $6
    global.get $assembly/mazeFn/NULL
    i32.ne
    if
     local.get $10
     i32.const 1
     i32.add
     local.set $10
     local.get $3
     local.get $6
     call $~lib/array/Array<i32>#push
     drop
    end
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $12
  i32.store offset=24
  local.get $12
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int32Array#__set
  local.get $12
  i32.const 1
  local.get $6
  call $~lib/typedarray/Int32Array#__set
  local.get $12
  i32.const 2
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $5
  local.get $12
  call $~lib/array/Array<~lib/typedarray/Int32Array>#push
  drop
  local.get $7
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/array/Array<~lib/typedarray/Int32Array>>#get:length
  i32.ge_u
  if
   i32.const 336
   i32.const 896
   i32.const 115
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 592
   i32.const 896
   i32.const 119
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String#repeat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
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
   i64.const 1
   i64.const 28
   i64.shl
   i64.gt_u
  end
  if
   i32.const 32
   i32.const 1024
   i32.const 333
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.eqz
  end
  if
   i32.const 1072
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $1
  i32.mul
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  local.get $1
  call $~lib/memory/memory.repeat
  local.get $3
  local.set $4
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
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 1072
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store
  local.get $5
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $5
  local.get $2
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $5
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 1072
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  local.get $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 1072
   end
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  i32.const 0
  local.set $5
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   local.set $7
   local.get $7
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $5
     local.get $6
     call $~lib/string/String#get:length
     i32.add
     local.set $5
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $8
  local.get $2
  call $~lib/string/String#get:length
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $5
  local.get $9
  local.get $3
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $10
  i32.store offset=8
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $3
   i32.lt_s
   local.set $7
   local.get $7
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $6
     call $~lib/string/String#get:length
     local.set $11
     local.get $10
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $11
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     local.get $11
     i32.add
     local.set $8
    end
    local.get $9
    if
     local.get $10
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $9
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     local.get $9
     i32.add
     local.set $8
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.ne
  if
   local.get $10
   local.get $8
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   local.get $6
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $10
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 896
   i32.const 90
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 10
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 896
   i32.const 90
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 9
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/staticarray/StaticArray<~lib/string/String>>#get:length
  i32.ge_u
  if
   i32.const 336
   i32.const 896
   i32.const 115
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 592
   i32.const 896
   i32.const 119
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 544
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
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 592
   i32.const 544
   i32.const 111
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 544
   i32.const 65
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.const 0
  local.get $4
  call $~lib/memory/memory.fill
  local.get $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 544
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
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 592
   i32.const 544
   i32.const 111
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:assembly/index/generateClasses (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/index/generateClasses
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assembly/index/updateClasses (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/index/updateClasses
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
)
