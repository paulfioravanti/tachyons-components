module Article.TitleHighlightHeaderCover.Styles
    exposing
        ( author
        , content
        , date
        , header
        , headerContent
        , lead
        , paragraph1
        , paragraph2
        , quote
        , subtitle
        , title
        , titleText
        )


content : String
content =
    [ "center"
    , "georgia"
    , "mw9-l"
    , "pa4 ph7-l"
    ]
        |> String.join " "


author : String
author =
    [ "black-80"
    , "f6"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "


date : String
date =
    [ "dib"
    , "f6"
    , "mb2"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "


header : String
header =
    [ "bg-gold"
    , "sans-serif"
    ]
        |> String.join " "


headerContent : String
headerContent =
    [ "center"
    , "mw9"
    , "pa4 pt5-ns ph7-l"
    ]
        |> String.join " "


lead : String
lead =
    [ "f5 f3-ns"
    , "georgia"
    , "lh-copy"
    , "measure"
    ]
        |> String.join " "


paragraph1 : String
paragraph1 =
    [ "f5 f4-ns"
    , "lh-copy"
    , "mb4"
    , "measure"
    ]
        |> String.join " "


paragraph2 : String
paragraph2 =
    [ "f5 f4-ns"
    , "lh-copy"
    , "measure"
    ]
        |> String.join " "


quote : String
quote =
    [ "b--gold"
    , "bl"
    , "bw1"
    , "f6 f5-ns"
    , "i"
    , "lh-copy"
    , "mb4"
    , "measure"
    , "pl4"
    ]
        |> String.join " "


subtitle : String
subtitle =
    [ "f3"
    , "fw1"
    , "georgia"
    , "i"
    ]
        |> String.join " "


title : String
title =
    [ "f2 f1-m f-headline-l"
    , "lh-title"
    , "measure-narrow"
    , "mv0"
    ]
        |> String.join " "


titleText : String
titleText =
    [ "bg-black-90"
    , "lh-copy"
    , "pa1"
    , "tracked-tight"
    , "white"
    ]
        |> String.join " "
