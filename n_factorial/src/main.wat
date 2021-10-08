(module
  (func $fact (param $0 i32) (result i32)
    get_local $0
    i32.const 1
    i32.eq
    if
      i32.const 1
      return
    end

    get_local $0
    i32.const 1
    i32.sub
    call $fact
    get_local $0
    i32.mul
  )
  (export "fact" (func $fact))
)