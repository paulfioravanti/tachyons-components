module Marketing.IPhoneApp.Styles
    exposing
        ( copy
        , heading
        , image
        , link
        , section
        , subheading
        )


copy : String
copy =
    [ "ph3"
    , "tc"
    , "tl-ns"
    ]
        |> String.join " "


heading : String
heading =
    [ "f3 f1-l"
    , "fw2"
    , "mb3"
    , "mt4 mt0-ns"
    ]
        |> String.join " "


image : String
image =
    [ "mw6"
    , "ph5"
    ]
        |> String.join " "


link : String
link =
    [ "dib"
    , "grow"
    ]
        |> String.join " "


section : String
section =
    [ "flex-ns"
    , "items-center"
    , "vh-100"
    ]
        |> String.join " "


subheading : String
subheading =
    [ "f5 f3-l"
    , "fw1"
    , "mb4 mb5-l"
    , "lh-title"
    ]
        |> String.join " "
