module Card.AlbumCentered.Styles exposing
    ( artistDescription
    , descriptionList
    , image
    , link
    , term
    , titleDescription
    )


artistDescription : String
artistDescription =
    [ "gray"
    , "ml0"
    ]
        |> String.join " "


descriptionList : String
descriptionList =
    [ "f6"
    , "lh-copy"
    , "mt2"
    ]
        |> String.join " "


image : String
image =
    [ "b--black-10"
    , "ba"
    , "db"
    ]
        |> String.join " "


link : String
link =
    [ "black"
    , "center"
    , "db"
    , "dim"
    , "link"
    , "mw5"
    , "tc"
    ]
        |> String.join " "


term : String
term =
    "clip"


titleDescription : String
titleDescription =
    "ml0"
