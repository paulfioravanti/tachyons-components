module Article.TitleTextImage.Styles exposing
    ( article
    , copy
    , heading
    , image
    )


article : String
article =
    "pa3 pa5-ns"


copy : String
copy =
    [ "lh-copy"
    , "measure"
    ]
        |> String.join " "


heading : String
heading =
    "f2"


image : String
image =
    [ "f5"
    , "measure"
    , "w-100"
    ]
        |> String.join " "
