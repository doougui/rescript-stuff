@module("./MyComponent")
@react.component
// escape reserved keyword with _
external make : (~name: string, ~_type: [#user | #admin]=?) => React.element = "default";
