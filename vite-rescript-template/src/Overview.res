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

let fn = (person: person) => {
  switch (person) {
    | User({ name: "Douglas" }) => `Hello, Douglinhas`
    | User({ name }) => `Hello, ${name}`
    | Admin(name) => `Hello, ${name}`
    | Person({ name }) => `Hello, ${name}`
  }
}

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