module Table.Basic.Styles exposing
    ( container
    , content
    , table
    , tableBody
    , tableData
    , tableHeading
    )


container : String
container =
    "overflow-auto"


content : String
content =
    "pa4"


table : String
table =
    [ "center"
    , "f6"
    , "mw8"
    , "w-100"
    ]
        |> String.join " "


tableBody : String
tableBody =
    "lh-copy"


tableData : String
tableData =
    [ "b--black-20"
    , "bb"
    , "pr3"
    , "pv3"
    ]
        |> String.join " "


tableHeading : String
tableHeading =
    [ "b--black-20"
    , "bb"
    , "bg-white"
    , "fw6"
    , "pb3"
    , "pr3"
    , "tl"
    ]
        |> String.join " "
