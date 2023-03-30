@react.component
let make = () => {
  <div className="main-container">
    <h1>{`Hello from ReScript and Vite 😄`->React.string}</h1>
    <p>{
      switch (Interop.magicMaybeString->Js.Null.toOption) {
        | Some(s) => s
        | None => "No string"
      }->React.string
    }</p>
  </div>
}
