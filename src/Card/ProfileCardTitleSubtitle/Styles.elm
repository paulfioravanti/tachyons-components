module Card.ProfileCardTitleSubtitle.Styles
    exposing
        ( article
        , content
        , heading
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


heading : String
heading =
    [ "f3"
    , "mb2"
    ]
        |> String.join " "


image : String
image =
    [ "b--black-05"
    , "ba"
    , "br-100"
    , "dib"
    , "h4"
    , "pa2"
    , "w4"
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
