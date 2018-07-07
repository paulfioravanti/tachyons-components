module Banner.Basic.Styles
    exposing
        ( article
        , callToAction
        , heading
        , learnMore
        , signUp
        , subHeading
        )

import Banner.Styles as Styles


article : String
article =
    [ "bg-washed-green"
    , "br2"
    , "center"
    , "dark-green"
    , "mb5"
    , "mw7"
    , "ph3 ph5-ns"
    , "pv5"
    , "tc"
    ]
        |> String.join " "


callToAction : String
callToAction =
    [ "f5"
    , "fw1"
    , "mb3"
    , "mt0"
    ]
        |> String.join " "


heading : String
heading =
    [ "f3 f2-ns"
    , "fw6"
    , "lh-title"
    , "mb3"
    , "mt0"
    ]
        |> String.join " "


learnMore : String
learnMore =
    [ "ba"
    , "br-pill"
    , "dark-green"
    , "dib"
    , "f6"
    , "grow"
    , "no-underline"
    , "ph3"
    , "pv2"
    ]
        |> String.join " "


signUp : String
signUp =
    [ "b--dark-green"
    , "ba"
    , "bg-dark-green"
    , "br-pill"
    , "dib"
    , "f6"
    , "grow"
    , "mr3"
    , "no-underline"
    , "ph3"
    , "pv2"
    , "washed-green"
    ]
        |> String.join " "


subHeading : String
subHeading =
    [ "f4"
    , "fw2"
    , "lh-copy"
    , "mb3"
    , "mt0"
    ]
        |> String.join " "
