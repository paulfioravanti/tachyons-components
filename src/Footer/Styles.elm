module Footer.Styles
    exposing
        ( badges
        , callsToAction
        , callToAction
        , callToActionSvg
        , centerContent
        , footer
        , footerLink
        , footerLinks
        , offerOfHelp
        , tachyonsDefinition
        , twitterBadge
        , twitterSvg
        , twitterText
        )


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


offerOfHelp : String
offerOfHelp =
    [ "copy"
    , "f6"
    , "lh-copy"
    , "measure"
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
