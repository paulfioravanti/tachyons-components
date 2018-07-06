module Article.SingleColumnLargeTitle.Styles
    exposing
        ( article
        , content
        , copy
        , date
        , header
        , headerImage
        , heading
        , image
        , lead
        )


article : String
article =
    [ "baskerville"
    , "pb5"
    ]
        |> String.join " "


content : String
content =
    "ph3 ph4-m ph5-l"


copy : String
copy =
    [ "db"
    , "center"
    , "f5 f4-ns"
    , "lh-copy"
    , "measure"
    ]
        |> String.join " "


date : String
date =
    [ "baskerville"
    , "db"
    , "f5 f4-l"
    , "fw1"
    , "mb4"
    ]
        |> String.join " "


header : String
header =
    [ "avenir"
    , "tc-l"
    , "ph3 ph4-ns"
    , "pt4 pt5-ns"
    ]
        |> String.join " "


headerImage : String
headerImage =
    [ "dib"
    , "f3"
    , "measure"
    , "w-100"
    ]
        |> String.join " "


heading : String
heading =
    [ "f3 f2-m f-subheadline-l"
    , "fw1"
    , "lh-title"
    , "measure"
    , "mt0"
    ]
        |> String.join " "


image : String
image =
    [ "db"
    , "mt4 mt5-ns"
    , "w-100"
    ]
        |> String.join " "


lead : String
lead =
    [ "center"
    , "f4"
    , "lh-copy"
    , "mb4"
    , "measure"
    ]
        |> String.join " "
