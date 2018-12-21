module Article.LeftTitleTopBorder.Styles exposing
    ( article
    , content
    , date
    , header
    , heading
    , paragraph1
    , paragraph2
    , subHeading
    )


article : String
article =
    [ "cf"
    , "ph3 ph5-ns"
    , "pv5"
    ]
        |> String.join " "


content : String
content =
    [ "fn fl-ns"
    , "w-50-ns"
    ]
        |> String.join " "


date : String
date =
    [ "f6"
    , "gray"
    , "ttu"
    , "tracked"
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
    [ "bt"
    , "bw2"
    , "f2"
    , "fw9"
    , "lh-title"
    , "mb3"
    , "mt0"
    , "pt3"
    ]
        |> String.join " "


paragraph1 : String
paragraph1 =
    "mt0-ns"
        :: paragraph
        |> String.join " "


paragraph2 : String
paragraph2 =
    paragraph
        |> String.join " "


subHeading : String
subHeading =
    [ "f3"
    , "mid-gray"
    , "lh-title"
    ]
        |> String.join " "


paragraph : List String
paragraph =
    [ "f5"
    , "lh-copy"
    , "measure"
    ]
