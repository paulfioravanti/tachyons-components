module Header.CircleAvatarTitleSubtitle.Styles exposing
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
    [ "f5 f4-ns"
    , "fw6"
    , "mid-gray"
    ]
        |> String.join " "


image : String
image =
    [ "b--black-10"
    , "ba"
    , "br-100"
    , "h3"
    , "pa1"
    , "w3"
    ]
        |> String.join " "


subheading : String
subheading =
    [ "f6"
    , "fw2"
    , "gray"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "
