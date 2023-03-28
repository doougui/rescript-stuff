open Render

module Style = ReactDOM.Style

let container = Style.make(~border="1px solid red", ~padding="16px", ())

@react.component
let make = () => {
  <div style=container>{`Hello from InlineStyling`->s}</div>
}