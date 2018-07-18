module Link.AnimateColor.Styles
    exposing
        ( link
        , links
        )


link : String -> String
link colour =
    [ "black"
    , "db"
    , "f4"
    , "fw6"
    , "hover-" ++ colour
    , "link"
    ]
        |> String.join " "


links : String
links =
    """
    lh-copy
    pa4
    """
