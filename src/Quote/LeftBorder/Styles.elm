module Quote.LeftBorder.Styles exposing
    ( blockquote
    , cite
    , copy
    , quote
    )


blockquote : String
blockquote =
    [ "athelas"
    , "b--blue"
    , "bl"
    , "bw2"
    , "black-90"
    , "ml0"
    , "mt0"
    , "pl4"
    ]
        |> String.join " "


cite : String
cite =
    [ "f6"
    , "fs-normal"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "


copy : String
copy =
    [ "f5 f4-m f3-l"
    , "lh-copy"
    , "measure"
    , "mt0"
    ]
        |> String.join " "


quote : String
quote =
    "pa4"
