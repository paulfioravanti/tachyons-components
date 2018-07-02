module Footer.Styles
    exposing
        ( anchor
        , badges
        , callsToAction
        , callToAction
        , callToActionSvg
        , centerContent
        , footer
        , footerLink
        , footerLinks
        , header
        , headerContent
        , main_
        , mainHeader
        , nav
        , navLink
        , offerOfHelp
        , sectionContent
        , sectionContentLink
        , sectionContentLinkContent
        , sectionContentLinkImage
        , sectionContentTitle
        , sectionContentWrapper
        , sectionHeader
        , sectionTitle
        , tachyonsDefinition
        , title
        , titleLink
        , twitterBadge
        , twitterSvg
        , twitterText
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


badges : String
badges =
    "v-top"


callsToAction : String
callsToAction =
    "mt4"


callToAction : String
callToAction =
    [ "b"
    , "ba"
    , "black-70"
    , "br2"
    , "grow"
    , "inline-flex"
    , "items-center"
    , "mb3"
    , "mr3"
    , "no-underline"
    , "ph3"
    , "pv2"
    ]
        |> String.join " "


callToActionSvg : String
callToActionSvg =
    [ "pr2"
    , "pv1"
    , "w2"
    ]
        |> String.join " "


centerContent : String
centerContent =
    [ "center"
    , "mw9"
    ]
        |> String.join " "


footer : String
footer =
    [ "bg-white"
    , "b--black-10"
    , "black-70"
    , "bt"
    , "ph3 ph5-ns"
    , "pv5 pv6-ns"
    ]
        |> String.join " "


footerLink : String
footerLink =
    [ "b"
    , "black-70"
    , "dib"
    , "hover-blue"
    , "link"
    , "mb3"
    , "mr3"
    ]
        |> String.join " "


footerLinks : String
footerLinks =
    [ "lh-copy"
    , "mb5"
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
    [ "db"
    , "dt-ns"
    , "w-100"
    ]
        |> String.join " "
        |> (++) centerContent


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


offerOfHelp : String
offerOfHelp =
    [ "copy"
    , "f6"
    , "lh-copy"
    , "measure"
    ]
        |> String.join " "


sectionContent : String
sectionContent =
    centerContent ++ " cf"


sectionContentLink : String
sectionContentLink =
    [ "black-70"
    , "border-box"
    , "db"
    , "fl"
    , "link"
    , "pb2"
    , "pointer"
    , "pr2"
    , "underline-hover"
    , "w-50 w-25-l"
    , "w-third-m"
    ]
        |> String.join " "


sectionContentLinkContent : String
sectionContentLinkContent =
    [ "aspect-ratio"
    , "aspect-ratio--4x3"
    , "ba"
    , "b--black-20"
    ]
        |> String.join " "


sectionContentLinkImage : String
sectionContentLinkImage =
    [ "aspect-ratio--object"
    , "bg-center"
    , "cover"
    , "lazyload"
    ]
        |> String.join " "


sectionContentTitle : String
sectionContentTitle =
    [ "f6"
    , "truncate"
    ]
        |> String.join " "


sectionContentWrapper : String
sectionContentWrapper =
    [ "mb5"
    , "ph3 ph5-ns"
    ]
        |> String.join " "


sectionHeader : String
sectionHeader =
    "ph3 ph5-ns"


sectionTitle : String
sectionTitle =
    [ "b--black-10"
    , "bb"
    , "black-70"
    , "f5"
    , "fw6"
    , "pb2"
    , "ttc"
    ]
        |> String.join " "


tachyonsDefinition : String
tachyonsDefinition =
    [ "db"
    , "f6"
    , "lh-copy"
    , "measure"
    , "mt5"
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


twitterBadge : String
twitterBadge =
    [ "bg-white-50"
    , "br2"
    , "dib"
    , "dim"
    , "lh-solid"
    , "link"
    , "pb1"
    , "ph2"
    , "twitter"
    , "v-top"
    ]
        |> String.join " "


twitterSvg : String
twitterSvg =
    [ "dib"
    , "v-mid"
    ]
        |> String.join " "


twitterText : String
twitterText =
    [ "dib"
    , "fw6"
    , "pl1"
    , "v-mid"
    , "white"
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
