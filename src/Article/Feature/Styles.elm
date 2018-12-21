module Article.Feature.Styles exposing
    ( article
    , author
    , backgroundImage
    , content
    , edition
    , header
    , headline
    , heroContent
    , heroFooter
    , issue
    , slogan
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
    [ "bg-dark-gray"
    , "cover"
    , "dt"
    , "tc"
    , "vh-100"
    , "w-100"
    , "white"
    ]
        |> String.join " "


content : String
content =
    [ "center"
    , "f5"
    , "lh-copy"
    , "measure-wide"
    , "ph2"
    , "pv5"
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
    "white-70"


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


slogan : String
slogan =
    [ "fw1"
    , "white-70"
    ]
        |> String.join " "


title : String
title =
    [ "f1 f-headline-l"
    , "fw1"
    , "i"
    , "white-60"
    ]
        |> String.join " "
