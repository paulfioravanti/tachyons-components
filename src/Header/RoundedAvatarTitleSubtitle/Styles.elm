module Header.RoundedAvatarTitleSubtitle.Styles
    exposing
        ( header
        , heading
        , image
        , subheading
        )


header : String
header =
    [ "pv4 pv5-ns"
    , "tc"
    ]
        |> String.join " "


heading : String
heading =
    [ "black-70"
    , "f5 f4-ns"
    , "fw6"
    ]
        |> String.join " "


image : String
image =
    [ "b--black-10"
    , "ba"
    , "br3"
    , "h3"
    , "w3"
    ]
        |> String.join " "


subheading : String
subheading =
    [ "black-70"
    , "f6"
    , "fw2"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "
