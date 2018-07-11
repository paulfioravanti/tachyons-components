module ErrorPage.FourOhFour.Styles
    exposing
        ( callToAction
        , header
        , heading
        , link
        , linkList
        , linkListElement
        , section
        , subheading
        )


callToAction : String
callToAction =
    [ "f4 f3-l"
    , "fw1"
    , "i"
    , "mt4 mt5-l"
    , "tc"
    ]
        |> String.join " "


header : String
header =
    [ "lh-copy"
    , "ph5"
    , "tc"
    ]
        |> String.join " "


heading : String
heading =
    [ "code"
    , "dib"
    , "f1 f-headline-l"
    , "fw9"
    , "light-purple"
    , "mb3"
    , "tracked-tight"
    ]
        |> String.join " "


link : String
link =
    [ "black"
    , "db"
    , "f5 f4-ns"
    , "hover-light-purple"
    , "link"
    , "ph3"
    , "pv2"
    ]
        |> String.join " "


linkList : String
linkList =
    [ "list"
    , "mt5"
    , "pl0"
    , "tc"
    , "w-100"
    ]
        |> String.join " "


linkListElement : String
linkListElement =
    "dib"


section : String
section =
    [ "baskerville"
    , "bg-washed-blue"
    , "vh-100"
    ]
        |> String.join " "


subheading : String
subheading =
    [ "f1-l"
    , "fw1"
    , "tc"
    ]
        |> String.join " "
