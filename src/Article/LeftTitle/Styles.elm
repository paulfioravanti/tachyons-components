module Article.LeftTitle.Styles exposing
    ( article
    , author
    , content
    , header
    , heading
    , paragraph1
    , paragraph2
    )


article : String
article =
    [ "cf"
    , "ph3 ph5-ns"
    , "pv5"
    ]
        |> String.join " "


author : String
author =
    [ "f6"
    , "gray"
    , "ttu"
    , "tracked"
    ]
        |> String.join " "


content : String
content =
    [ "fn fl-ns"
    , "w-50-ns"
    ]
        |> String.join " "


header : String
header =
    [ "fn fl-ns"
    , "pr4-ns"
    , "w-50-ns"
    ]
        |> String.join " "


heading : String
heading =
    [ "lh-title"
    , "mb3"
    , "mt0"
    ]
        |> String.join " "


paragraph1 : String
paragraph1 =
    [ "lh-copy"
    , "measure"
    , "mt4 mt0-ns"
    ]
        |> String.join " "


paragraph2 : String
paragraph2 =
    [ "lh-copy"
    , "measure"
    ]
        |> String.join " "
