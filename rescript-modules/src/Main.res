let result = Math.sum(1, 2)
Js.log(result)

// import everything from Math2 so we don't have to use Math2.subtract
open Math2
Js.log(subtract(2, 1))

// alias
module MathTwo = Math2
Js.log(MathTwo.subtract(5, 2))

// modules inside modules
Js.log(Math3.Sum.calc(10, 20))
Js.log(Math3.Subtract.calc(20, 5))

let { calc: sum } = module(Math3.Sum)
Js.log(sum(8, 3))