module Card.ProfileCard.Styles exposing
    ( article
    , content
    , description
    , heading
    , hr
    , image
    , subheading
    )


article : String
article =
    [ "b--black-10"
    , "ba"
    , "bg-white"
    , "br3"
    , "center"
    , "mw5"
    , "mv3"
    , "pa3 pa4-ns"
    ]
        |> String.join " "


content : String
content =
    "tc"


description : String
description =
    [ "black-70"
    , "center"
    , "f6"
    , "lh-copy"
    , "measure"
    ]
        |> String.join " "


heading : String
heading =
    "f4"


hr : String
hr =
    [ "b--black-10"
    , "bb"
    , "bw1"
    , "mw3"
    ]
        |> String.join " "


image : String
image =
    [ "br-100"
    , "dib"
    , "h3"
    , "w3"
    ]
        |> String.join " "


subheading : String
subheading =
    [ "f5"
    , "fw4"
    , "gray"
    , "mt0"
    ]
        |> String.join " "
