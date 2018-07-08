module Banner.SingleCta.Styles
    exposing
        ( article
        , container
        , content
        , copy
        , ctaLink
        , heading
        , section
        )


article : String
article =
    [ "b--light-blue"
    , "ba"
    , "bg-lightest-blue"
    , "br2"
    , "center"
    , "mw8"
    ]
        |> String.join " "


container : String
container =
    [ "dt-ns"
    , "dt--fixed-ns"
    , "w-100"
    ]
        |> String.join " "


content : String
content =
    [ "dtc-ns"
    , "pa3 pa4-ns"
    , "v-mid"
    ]
        |> String.join " "


copy : String
copy =
    [ "black-70"
    , "lh-copy"
    , "measure"
    , "mv0"
    ]
        |> String.join " "


ctaLink : String
ctaLink =
    [ "bg-animate"
    , "bg-blue"
    , "br2"
    , "db"
    , "f6"
    , "hover-bg-dark-blue"
    , "no-underline"
    , "pv3"
    , "tc"
    , "w-100"
    , "white"
    ]
        |> String.join " "


heading : String
heading =
    [ "blue"
    , "fw4"
    , "mb3"
    , "mt0"
    ]
        |> String.join " "


section : String
section =
    [ "ph3 ph5-ns"
    , "pv5"
    ]
        |> String.join " "
