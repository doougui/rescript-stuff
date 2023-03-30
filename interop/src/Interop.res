@module("./JsInterop")
external magicNumber: int = "magicNumber";

@module("./JsInterop")
external magicArray: array<option<int>> = "magicArray";

type magicObj = {
  a: int,
  b: int,
  c: int,
}

@module("./JsInterop")
external magicObject: magicObj = "magicObject";

@module("./JsInterop")
external magicMaybeString: Js.Null.t<string> = "magicMaybeString";
