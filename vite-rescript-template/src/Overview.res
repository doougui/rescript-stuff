let valueInt = 12
let valueFloat = 12.0

let res = valueFloat->Belt.Float.toInt + valueInt

let str = `1290 ${"Hello"} ${valueInt->Belt.Int.toString}`

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
  name: "Gabriel",
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
  name: "D",
  age: 20
})

// pattern matching and named arguments
let greet = (~person: person, ~isSpecial=false, ()) => {
  switch (person) {
    | User({ name: "Douglas" }) if isSpecial => `Hello, Douglinhas, você é especial com if 🌈`
    | User({ name: "Douglas" }) when isSpecial => `Hello, Douglinhas, você é especial com when 🌈`
    | User({ name: "Douglas" }) => `Hello, Douglinhas`
    | User({ name }) => `Hello, ${name}`
    | Admin(name) => `Hello, ${name}`
    | Person({ name }) => `Hello, ${name}`
  }
}

let msg = greet(~person=douglas, ())

// polyvariant
// type role = [#admin | #user | #masteradmin]
let myProfileRole = #admin
let myProfileUserRole = #user
let otherRole = #admin({ name: "ADMIN", age: 12 })

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

let str = str
  ->sumX(~isSpecial=true)
  ->sumY
  ->sumZ