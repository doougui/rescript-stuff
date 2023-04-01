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

@module("./JsInterop")
external magicFunction: (float, float) => float = "magicFunction";

@module("./JsInterop")
external magicCallback: (~cb: (Js.Null.t<string>, Js.Null.t<string>) => unit) => unit = "magicCallback";

type cbResult = | Errored(string) | Success(string)

let magicCallback = (cb) => {
  magicCallback(~cb=(error, result) => {
    let error = error->Js.Null.toOption;
    let result = result->Js.Null.toOption;

    switch (error, result) {
      | (Some(error), _) => cb(Errored(error))
      | (None, Some(result)) => cb(Success(result))
      | (None, None) => cb(Errored("No error and no result"))
    }
  })
}

type window;

@val
external window : window = "window"

@send
external alert : (window, string) => unit = "alert"

@module("./JsInterop")
external magicLog : array<'a> => unit = "magicLog"

let magicRaw : string => unit = %raw(`
  function(msg) {
    window.alert(msg)
  }
`)
