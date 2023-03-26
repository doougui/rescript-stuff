open Render

module OptionalProp = {
  @react.component
  let make = (~message=?) => {
    <div>
      {switch (message) {
        | None => React.string("Default")
        | Some(msg) => React.string(msg)
      }}
    </div>
  }
}

module Punning = {
  @react.component
  let make = (~placeholder=?) => {
    <input ?placeholder />
  }
}

module Children = {
  @react.component
  let make = (~children) => {
    <div>{children}</div>
  }
}

let s = React.string
module Array = Js.Array2

module List = {
  let names = ["John Denso", "Maria Key"]

  @react.component
  let make = () => {
    <ul>
      {names->map((name, key) => <li key>{name->s}</li>)}
    </ul>
  }
}

@react.component
let make = () => {
  <div>
    <OptionalProp message="ReScript/React" />
    <Punning />
    <Children>{React.string("Hello")}</Children>
    <List />
    <Counter />
  </div>
}
