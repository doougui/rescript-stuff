@react.component
let make = (~message=?) => {
  <div>
    {switch (message) {
      | None => React.string("Default")
      | Some(msg) => React.string(msg)
    }}
  </div>
}