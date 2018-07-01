module ListComponents.Styles
    exposing
        ( anchor
        , anchors
        , header
        , headerContent
        , main_
        , mainHeader
        , nav
        , navLink
        , title
        , titleLink
        , versionNumber
        , versionNumberWrapper
        )


anchor : String
anchor =
    [ "b"
    , "black-70"
    , "dib"
    , "f6"
    , "fw6"
    , "hover-blue"
    , "link"
    , "mb3"
    , "mr3"
    , "pb1"
    , "ttc"
    ]
        |> String.join " "


anchors : String
anchors =
    [ "center"
    , "mw9"
    ]
        |> String.join " "


header : String
header =
    [ "bg-white"
    , "pa3"
    , "ph5-ns"
    , "w-100"
    ]
        |> String.join " "


headerContent : String
headerContent =
    [ "center"
    , "db"
    , "dt-ns"
    , "mw9"
    , "w-100"
    ]
        |> String.join " "


main_ : String
main_ =
    [ "bg-white"
    , "black-70"
    ]
        |> String.join " "


mainHeader : String
mainHeader =
    [ "b--black-10"
    , "bb"
    , "bt"
    , "mb4"
    , "ph3 ph5-ns"
    , "pt3"
    ]
        |> String.join " "


nav : String
nav =
    [ "db"
    , "dtc-ns"
    , "mt2 mt0-ns"
    , "tl tr-ns"
    , "v-mid"
    , "w-100"
    ]
        |> String.join " "


navLink : String
navLink =
    [ "black-70"
    , "dib"
    , "f6"
    , "fw6"
    , "hover-blue"
    , "link"
    , "mr2 mr3-m mr4-l"
    ]
        |> String.join " "


title : String
title =
    [ "db"
    , "dtc-ns"
    , "tl"
    , "v-mid"
    , "w-50"
    ]
        |> String.join " "


titleLink : String
titleLink =
    [ "black-70"
    , "dib"
    , "f5 f4-ns"
    , "fw6"
    , "link"
    , "mb1"
    , "mt0"
    , "v-mid"
    ]
        |> String.join " "


versionNumber : String
versionNumber =
    [ "black-70"
    , "nowrap"
    , "f6"
    , "fw2"
    , "mt2 mt3-ns"
    , "pr2"
    ]
        |> String.join " "


versionNumberWrapper : String
versionNumberWrapper =
    "dib"
