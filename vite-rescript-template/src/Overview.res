let valueInt = 12
let valueFloat = 12.0

let res = valueFloat->Belt.Float.toInt + valueInt

let concat = `1290 ${"Hello"} ${valueInt->Belt.Int.toString}`
Js.log(concat)

let isTrue = true

// array
let arr: array<int> = [1, 2, 3]

// tuple
let (a, b, c) = (1, 2, 3)

// ref
let myRef = ref(2)
myRef.contents = 12

// user defined types

// record
// this
open ProfileTypes

type profile<'source> = {
  name: string,
  age: int,
  source: 'source,
}

// or type explicitly
let userProfile: ProfileTypes.userProfile = {
  name: Some("Gabriel"),
  age: 12
}

let otherProfile = {
  ...userProfile,
  age: 19
}

// phantom type
type t;

// ADT = ALgebraic Data Types, variants

type person = | User(userProfile) | Admin(string) | Person(userProfile)

let douglas = User({
  name: None,
  age: 20
})

// pattern matching and named arguments
let greet = (~person: person, ~isSpecial=false, ()) => {
  switch (person) {
    | User({ name: Some("Douglas") }) if isSpecial => `Hello, Douglinhas, você é especial com if 🌈`
    | User({ name: Some("Douglas") }) when isSpecial => `Hello, Douglinhas, você é especial com when 🌈`
    | User({ name: Some("Douglas") }) => `Hello, Douglinhas`
    | User({ name }) => `Hello, ${switch name { | None => "-" | Some(v) => v }}`
    | Admin(name) => `Hello, ${name}`
    | Person({ name }) => `Hello, ${switch name { | None => "-" | Some(v) => v }}`
  }
}

let msg = greet(~person=douglas, ())

// polyvariant
// type role = [#admin | #user | #masteradmin]
let myProfileRole = #admin
let myProfileUserRole = #user
let otherRole = #admin({ name: Some("ADMIN"), age: 12 })

let hello = (role) => {
  switch (role) {
    | #admin => "Hello, admin"
    | #master => "Hello, master"
  }
}

let _ = hello(myProfileRole)

let sumX = (str, ~isSpecial) => isSpecial ? `${str}-special` : `${str}-non-special`
let sumY = (str) => `${str}-y`
let sumZ = (str) => `${str}-z`

// Data-first pipe operator

let str = "Douglas"
  ->sumX(~isSpecial=true)
  ->sumY
  ->sumZ

let anotherRes = str->Js.String2.includes("something")

let greet2 = (~person: person, coords) => {
  switch (person, coords) {
    | (User({ name: Some("Douglas") }), (30, 40)) => `Hello, desgraça`
    | (User({ name }), (20, 20)) => `Hello, ${switch name { | None => "-" | Some(v) => v }}`
    | (Admin(name), (10, 10)) => `Hello, ${name}`
    | (Person({ name }), (50, 50)) => `Hello, ${switch name { | None => "-" | Some(v) => v }}`
    // catch-all
    | _ => `Hello, putinha`
  }
}