module Article.FullBleedBackground.Styles
    exposing
        ( article
        , author
        , backgroundImage
        , content
        , copy
        , edition
        , header
        , headline
        , heroContent
        , heroFooter
        , issue
        , section
        , slogan
        , subtitle
        , title
        )


article : String
article =
    "athelas"


author : String
author =
    [ "f6"
    , "fs-normal"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "


backgroundImage : String
backgroundImage =
    [ "cf"
    , "cover"
    ]
        |> String.join " "


content : String
content =
    [ "bg-white"
    , "black-70"
    , "f3"
    , "fl"
    , "measure-narrow"
    , "pa3 pa4-ns"
    , "times"
    ]
        |> String.join " "


copy : String
copy =
    [ "f4"
    , "lh-copy"
    , "measure"
    , "mt0"
    , "times"
    ]
        |> String.join " "


edition : String
edition =
    [ "f6"
    , "fw1"
    , "lh-title"
    ]
        |> String.join " "


header : String
header =
    [ "b--black-70"
    , "bb"
    , "pv4"
    ]
        |> String.join " "


headline : String
headline =
    [ "f1"
    , "lh-title"
    ]
        |> String.join " "


heroContent : String
heroContent =
    [ "dtc"
    , "v-mid"
    ]
        |> String.join " "


heroFooter : String
heroFooter =
    [ "center"
    , "f4"
    , "lh-copy"
    , "measure"
    , "mh0"
    , "ph0"
    ]
        |> String.join " "


issue : String
issue =
    [ "f6"
    , "fw1"
    , "lh-title"
    , "mb2"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "


section : String
section =
    [ "pb4"
    , "pt5"
    ]
        |> String.join " "


slogan : String
slogan =
    [ "fw1"
    , "white-70"
    ]
        |> String.join " "


subtitle : String
subtitle =
    [ "f3"
    , "fw4"
    , "i"
    , "lh-title"
    , "mt0"
    ]
        |> String.join " "


title : String
title =
    [ "avenir"
    , "f2"
    , "fw7"
    , "lh-title"
    , "mb3"
    , "mt0"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "
