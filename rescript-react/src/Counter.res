open Render

@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0)

  let handleClick = _ => setCount(i => i + 1)

  <React.Fragment>
    <div>{`Clicked ${count->Js.Int.toString}`->s}</div>
    <button onClick=handleClick>{"Increment"->s}</button>
  </React.Fragment>
}