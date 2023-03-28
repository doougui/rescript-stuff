let names = ["John Denso", "Maria Key"]

@react.component
let make = () => {
  <ul>
    {names->Render.map((name, key) => <li key>{name->Render.s}</li>)}
  </ul>
}