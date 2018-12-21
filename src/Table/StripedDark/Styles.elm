module Table.StripedDark.Styles exposing
    ( container
    , content
    , stripe
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


stripe : String
stripe =
    "stripe-dark"


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
    "pa3"


tableHeading : String
tableHeading =
    [ "bg-white"
    , "fw6"
    , "pa3"
    , "tl"
    ]
        |> String.join " "
