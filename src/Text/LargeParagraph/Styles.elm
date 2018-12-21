module Text.LargeParagraph.Styles exposing
    ( main_
    , paragraph
    )


main_ : String
main_ =
    "pa3 pa5-ns"


paragraph : String
paragraph =
    [ "f4"
    , "lh-copy"
    , "measure"
    ]
        |> String.join " "
