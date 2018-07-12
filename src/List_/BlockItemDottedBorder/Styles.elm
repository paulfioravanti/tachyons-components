module List_.BlockItemDottedBorder.Styles
    exposing
        ( list
        , listItem
        , listWrapper
        )


list : String
list =
    [ "center"
    , "list"
    , "measure"
    , "pl0"
    ]
        |> String.join " "


listItem : String
listItem =
    [ "b--black-30"
    , "b--dotted"
    , "ba"
    , "bl-0"
    , "br-0"
    , "bt-0"
    , "lh-copy"
    , "pv3"
    ]
        |> String.join " "


listWrapper : String
listWrapper =
    "pa3 pa5-ns"
