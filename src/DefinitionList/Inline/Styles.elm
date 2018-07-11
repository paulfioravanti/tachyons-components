module DefinitionList.Inline.Styles
    exposing
        ( description
        , descriptionList
        , glossary
        , heading
        , term
        )


description : String
description =
    [ "dib"
    , "ml1"
    , "gray"
    ]
        |> String.join " "


descriptionList : String
descriptionList =
    [ "f6"
    , "lh-title"
    , "mv2"
    ]
        |> String.join " "


glossary : String
glossary =
    "pa3 pa5-ns"


heading : String
heading =
    [ "f6"
    , "fw6"
    ]
        |> String.join " "


term : String
term =
    [ "b"
    , "dib"
    ]
        |> String.join " "
