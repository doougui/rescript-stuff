@react.component
let make = () => {
  React.useEffect0(() => {
    Interop.magicCallback((result) => {
      switch (result) {
        | Errored(error) => Js.log2("error", error)
        | Success(result) => Js.log2("success", result)
      }
    })
    None
  })

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
  </div>
}
