module Card.BasicTextCard.Styles
    exposing
        ( article
        , content
        , copy
        , heading
        )


article : String
article =
    [ "ba"
    , "center"
    , "hidden"
    , "mw5 mw6-ns"
    , "mv4"
    ]
        |> String.join " "


content : String
content =
    [ "bt"
    , "pa3"
    ]
        |> String.join " "


copy : String
copy =
    [ "f6 f5-ns"
    , "lh-copy"
    , "measure"
    , "mv0"
    ]
        |> String.join " "


heading : String
heading =
    [ "bg-near-black"
    , "f4"
    , "mv0"
    , "ph3"
    , "pv2"
    , "white"
    ]
        |> String.join " "
