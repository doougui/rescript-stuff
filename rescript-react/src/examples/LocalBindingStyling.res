open Render

module Styles = {
  let container = Emotion.Object.css({
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
  })

  let text = Emotion.css(`
    color: red;
    font-size: 1.6rem;
  `)
}

@react.component
let make = () => {
  <div className=Styles.container>
    <p className=Styles.text>
      {`Hello from LocalBindingStyling`->s}
    </p>
  </div>
}
