@react.component
let make = () => {
  React.useEffect1(() => {
    Interop.magicCallback((result) => {
      switch (result) {
        | Errored(error) => Js.log2("error", error)
        | Success(result) => Js.log2("success", result)
      }
    })

    open Interop
    window->alert("teste")
    magicLog([
      "first",
      "second",
      "third",
    ])
    None
  }, [])

  <div className="main-container">
    <h1>{`Hello from ReScript and Vite 😄`->React.string}</h1>
    <p>{
      switch (Interop.magicMaybeString->Js.Null.toOption) {
        | Some(s) => s
        | None => "No string"
      }->React.string
    }</p>
    <p>
      {Interop.magicFunction(1.0, 2.0)->Belt.Float.toString->React.string}
    </p>
    <p>{
      Js.Date.make()->DateFns.format("dd/MM/yyyy")->React.string
    }</p>
    <MyComponent name="Douglas" _type=#user />
  </div>
}
