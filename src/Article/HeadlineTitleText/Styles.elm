module Article.HeadlineTitleText.Styles exposing (article, copy, heading)


article : String
article =
    "pa3 pa5-ns"


heading : String
heading =
    "f3 f1-m f-headline-l"


copy : String
copy =
    [ "lh-copy"
    , "measure"
    ]
        |> String.join " "
