module Card.NewsCard.Styles exposing
    ( article
    , byline
    , heading
    , headingWrapper
    , headline
    , headlineWrapper
    , image
    )


article : String
article =
    [ "b--black-10"
    , "ba"
    , "bg-white"
    , "center"
    , "mw5"
    , "mv4"
    ]
        |> String.join " "


byline : String
byline =
    [ "db"
    , "gray"
    , "pv2"
    ]
        |> String.join " "


heading : String
heading =
    [ "f6"
    , "tracked"
    , "ttu"
    ]
        |> String.join " "


headingWrapper : String
headingWrapper =
    [ "ph3"
    , "pv2"
    ]
        |> String.join " "


headline : String
headline =
    [ "dim"
    , "lh-title"
    , "link"
    ]
        |> String.join " "


headlineWrapper : String
headlineWrapper =
    "pa3"


image : String
image =
    [ "db"
    , "w-100"
    ]
        |> String.join " "
