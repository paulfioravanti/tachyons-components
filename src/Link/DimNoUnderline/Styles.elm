module Link.DimNoUnderline.Styles
    exposing
        ( link
        , links
        )


link : String -> String
link colour =
    [ colour
    , "db"
    , "dim"
    , "f4"
    , "fw6"
    , "link"
    ]
        |> String.join " "


links : String
links =
    """
    lh-copy
    pa4
    """
