module Collection.SquareTitleSubtitle.Styles
    exposing
        ( article
        , image
        , imageWrapper
        , link
        , section
        , subtitle
        , title
        )


article : String
article =
    [ "fl"
    , "pa2-ns"
    , "w-100 w-50-m w-25-ns"
    ]
        |> String.join " "


image : String
image =
    [ "aspect-ratio--object"
    , "bg-center"
    , "cover"
    , "db"
    ]
        |> String.join " "


imageWrapper : String
imageWrapper =
    [ "aspect-ratio"
    , "aspect-ratio--1x1"
    ]
        |> String.join " "


link : String
link =
    [ "db"
    , "link"
    , "pb3"
    , "ph2 ph0-ns"
    ]
        |> String.join " "


section : String
section =
    [ "cf"
    , "pa2-ns"
    , "w-100"
    ]
        |> String.join " "


title : String
title =
    [ "black-90"
    , "f5 f4-ns"
    , "mb0"
    ]
        |> String.join " "


subtitle : String
subtitle =
    [ "black-60"
    , "f5 f6-ns"
    , "fw4"
    , "mt2"
    ]
        |> String.join " "
