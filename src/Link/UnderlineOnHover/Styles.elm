module Link.UnderlineOnHover.Styles exposing
    ( link
    , links
    )


link : String -> String
link colour =
    [ colour
    , "db"
    , "f4"
    , "fw6"
    , "link"
    , "no-underline"
    , "underline-hover"
    ]
        |> String.join " "


links : String
links =
    """
    lh-copy
    pa4
    """
