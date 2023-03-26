let root = ReactDOM.querySelector("#root")

switch (root) {
  | None => Js.log("No root")
  | Some(element) => ReactDOM.render(<App />, element)
}
