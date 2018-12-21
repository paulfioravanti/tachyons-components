module Text.WideParagraph.Styles exposing
    ( main_
    , paragraph
    )


main_ : String
main_ =
    "pa3 pa5-ns"


paragraph : String
paragraph =
    [ "f5"
    , "lh-copy"
    , "measure-wide"
    ]
        |> String.join " "
