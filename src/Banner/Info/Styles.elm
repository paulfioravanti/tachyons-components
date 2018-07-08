module Banner.Info.Styles exposing (banner, heading, svg)


banner : String
banner =
    [ "bg-lightest-blue"
    , "flex"
    , "items-center"
    , "justify-center"
    , "navy"
    , "pa4"
    ]
        |> String.join " "


heading : String
heading =
    [ "lh-title"
    , "ml3"
    ]
        |> String.join " "


svg : String
svg =
    "w1"
