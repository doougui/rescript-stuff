@genType
@react.component
let make = (~name, ~_type: option<[#user | #admin]>=?) => {
  <div>
    {
      switch (_type) {
        | Some(#user) => `Hello user ${name}`
        | Some(#admin) => `Hello admin ${name}`
        | None => `Hello, nothing`
      }->React.string
    }
  </div>
}