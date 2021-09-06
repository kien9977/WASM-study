(module
  
  (func $exp (param $0 i32) (param $1 i32) (result i32)
      get_local $0
      i32.const 0
      i32.eq
      if
        i32.const 1
        return
      end

      get_local $0
      i32.const 1
      i32.eq
      if
        get_local $1
        return
      end

      get_local $0
      i32.const 1
      i32.sub
      get_local $1
      call $frac
      get_local $1
      i32.mul

  )
  (export "exp" (func $exp))
)