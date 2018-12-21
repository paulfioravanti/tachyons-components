module Nav.FixedSemiTransparent.Styles exposing
    ( header
    , link
    , nav
    )


header : String
header =
    [ "bg-black-90"
    , "fixed"
    , "ph3 ph4-m ph5-l"
    , "pv3 pv4-ns"
    , "w-100"
    ]
        |> String.join " "


link : String
link =
    [ "dib"
    , "dim"
    , "link"
    , "mr3"
    , "white"
    ]
        |> String.join " "


nav : String
nav =
    [ "f6"
    , "fw6"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "
