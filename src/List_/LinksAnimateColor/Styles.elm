module List_.LinksAnimateColor.Styles
    exposing
        ( link
        , section
        )


link : String -> String
link color =
    [ "b"
    , "black"
    , "dib"
    , "f3"
    , "hover-" ++ color
    , "link"
    , "mr1"
    , "no-underline"
    , "ph2"
    , "pv1"
    ]
        |> String.join " "


section : String
section =
    """
    pa3 pa4-m pa5-l
    """
