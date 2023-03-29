open Render

module Styles = {
  open CssJs

  let container = style(. [
    display(#flex),
    alignItems(#center),
    justifyContent(#center),
  ])

  let text = style(. [
    color(red),
    fontSize(#rem(1.8))
  ])
}

@react.component
let make = () => {
  <div className=Styles.container>
    <p className=Styles.text>
      {`Hello from BsStyling`->s}
    </p>
  </div>
}
