module Button.CenteredIcons.Styles
    exposing
        ( caption
        , footer
        , icon
        , link
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
    [ "ph2"
    , "pv4"
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
    [ "bg-animate"
    , "bg-near-black"
    , "br2"
    , "hover-bg-gray"
    , "inline-flex"
    , "items-center"
    , "ma2"
    , "near-white"
    , "no-underline"
    , "pa2"
    , "tc"
    ]
        |> String.join " "
