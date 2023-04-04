@module("./MagicTsComponent")
@react.component
@genType.import("./MagicTsComponent")
external make : (~name: string, ~_type: [#person | #cat]=?) => React.element = "default"