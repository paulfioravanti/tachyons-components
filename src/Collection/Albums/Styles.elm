module Collection.Albums.Styles
    exposing
        ( album
        , albums
        , artistDescription
        , descriptionList
        , header
        , image
        , link
        , term
        , titleDescription
        )


album : String
album =
    [ "fl"
    , "pa2"
    , "w-50 w-25-m w-20-l"
    ]
        |> String.join " "


albums : String
albums =
    [ "cf"
    , "pa2"
    ]
        |> String.join " "


artistDescription : String
artistDescription =
    "gray"
        :: description
        |> String.join " "


descriptionList : String
descriptionList =
    [ "f6"
    , "lh-copy"
    , "mt2"
    ]
        |> String.join " "


header : String
header =
    [ "f3"
    , "fw4"
    , "mv0"
    , "pa3"
    ]
        |> String.join " "


image : String
image =
    [ "black-10"
    , "db"
    , "outline"
    , "w-100"
    ]
        |> String.join " "


link : String
link =
    [ "db"
    , "dim"
    , "link"
    , "tc"
    ]
        |> String.join " "


term : String
term =
    "clip"


titleDescription : String
titleDescription =
    "black"
        :: description
        |> String.join " "


description : List String
description =
    [ "ml0"
    , "truncate"
    , "w-100"
    ]
