module Page.FourByFourMixedGrid.Styles
    exposing
        ( article
        , content
        , copy
        , header
        , heading
        , image
        , imageWrapper
        , section
        )


article : String
article =
    [ "center"
    , "cf"
    , "mw9"
    , "pa3"
    ]
        |> String.join " "


content : String
content =
    [ "fl"
    , "pa3-m pa4-l"
    , "w-100 w-50-m w-25-l"
    ]
        |> String.join " "


copy : String
copy =
    [ "f6"
    , "lh-copy"
    , "measure"
    ]
        |> String.join " "


header : String
header =
    [ "fl"
    , "mb3 mb5-l"
    , "pa3-m pa4-l"
    , "w-100 w-50-l"
    ]
        |> String.join " "


heading : String
heading =
    [ "b"
    , "f3"
    , "lh-title"
    , "mt0"
    ]
        |> String.join " "


image : String
image =
    [ "aspect-ratio--object"
    , "bg-center"
    , "cover"
    ]
        |> String.join " "


imageWrapper : String
imageWrapper =
    [ "aspect-ratio"
    , "aspect-ratio--3x4"
    ]
        |> String.join " "


section : String
section =
    [ "fl"
    , "w-100"
    ]
        |> String.join " "
