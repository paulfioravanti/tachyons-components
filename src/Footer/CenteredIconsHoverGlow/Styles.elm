module Footer.CenteredIconsHoverGlow.Styles exposing
    ( caption
    , footer
    , icon
    , link
    , links
    )


caption : String
caption =
    [ "f6"
    , "ml3"
    , "pr2"
    ]
        |> String.join " "


footer : String
footer =
    [ "bg-black"
    , "bg-center"
    , "cover"
    , "tc-l"
    ]
        |> String.join " "


icon : String
icon =
    [ "dib"
    , "h2"
    , "w2"
    ]
        |> String.join " "


link : String
link =
    [ "bg-transparent"
    , "br2"
    , "hover-white"
    , "inline-flex"
    , "items-center"
    , "link"
    , "ma2"
    , "pa2"
    , "tc"
    , "white-60"
    ]
        |> String.join " "


links : String
links =
    [ "bg-black-80"
    , "ph3"
    , "pv5"
    , "w-100"
    ]
        |> String.join " "
