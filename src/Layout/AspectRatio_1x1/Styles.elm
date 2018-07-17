module Layout.AspectRatio_1x1.Styles
    exposing
        ( article
        , backgroundImage
        , backgroundImageWrapper
        )


article : String
article =
    [ "center"
    , "mw5 mw6-ns"
    , "pt4"
    ]
        |> String.join " "


backgroundImageWrapper : String
backgroundImageWrapper =
    [ "aspect-ratio"
    , "aspect-ratio--1x1"
    , "mb4"
    ]
        |> String.join " "


backgroundImage : String
backgroundImage =
    [ "aspect-ratio--object"
    , "bg-center"
    , "cover"
    ]
        |> String.join " "
