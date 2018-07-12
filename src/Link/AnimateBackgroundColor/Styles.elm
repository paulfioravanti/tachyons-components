module Link.AnimateBackgroundColor.Styles
    exposing
        ( link
        , linkWrapper
        )


link : String
link =
    [ "black"
    , "bg-animate"
    , "bg-white"
    , "dib"
    , "f4"
    , "fw7"
    , "hover-bg-light-blue"
    , "no-underline"
    , "pa2"
    ]
        |> String.join " "


linkWrapper : String
linkWrapper =
    [ "lh-copy"
    , "pa4"
    ]
        |> String.join " "
