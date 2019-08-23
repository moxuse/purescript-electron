{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "electron"
, dependencies =
    [ "argonaut-core"
    , "console"
    , "effect"
    , "foreign-object"
    , "generics-rep"
    , "ordered-collections"
    , "psci-support"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
