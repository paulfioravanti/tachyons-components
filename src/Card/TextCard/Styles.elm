module Card.TextCard.Styles exposing
    ( article
    , content
    , copy
    , heading
    )


article : String
article =
    [ "b--black-10"
    , "ba"
    , "br3"
    , "center"
    , "hidden"
    , "mw5 mw6-ns"
    , "mv4"
    ]
        |> String.join " "


content : String
content =
    [ "b--black-10"
    , "bt"
    , "pa3"
    ]
        |> String.join " "


copy : String
copy =
    [ "f6 f5-ns"
    , "lh-copy"
    , "measure"
    ]
        |> String.join " "


heading : String
heading =
    [ "bg-near-white"
    , "black-60"
    , "br--top"
    , "br3"
    , "f4"
    , "mv0"
    , "ph3"
    , "pv2"
    ]
        |> String.join " "
