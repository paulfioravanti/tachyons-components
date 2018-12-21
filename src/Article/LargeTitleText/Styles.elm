module Article.LargeTitleText.Styles exposing (article, copy, heading)


article : String
article =
    "pa3 pa5-ns"


heading : String
heading =
    "f3 f2-m f1-l"


copy : String
copy =
    [ "lh-copy"
    , "measure"
    ]
        |> String.join " "
