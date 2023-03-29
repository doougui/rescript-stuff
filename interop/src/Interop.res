let str = "string"
let num = 1
let float = 1.0
let boolean = true

type person = {
  name: string
}

let obj: person = {
  name: "Douglas"
}

type name = option<string>

let someName: name = Some("Gabriel")
let anotherName: name = None;