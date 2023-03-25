// Module types
module type SumInterface = {
  let sum: (int, int) => int
}

module Sum: SumInterface = {
  let sum = (a, b) => a + b
}

// Module functors
module type MultiplyInterface = {
  type t
  let calc: (t, t) => t
}

module CreateMultiply = (M: MultiplyInterface) => {
  type t = M.t
  let calc = M.calc
}

module MultiplyFloat = CreateMultiply({
  type t = float
  let calc = (a, b) => a *. b
})

Js.log(MultiplyFloat.calc(3.0, 2.0))