module Article.FullBleedBackground.Styles exposing
    ( backgroundImage
    , content
    , copy
    , header
    , section
    , subtitle
    , title
    )


backgroundImage : String
backgroundImage =
    [ "cf"
    , "cover"
    , "bg-center"
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


header : String
header =
    [ "b--black-70"
    , "bb"
    , "pv4"
    ]
        |> String.join " "


section : String
section =
    [ "pb4"
    , "pt5"
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
