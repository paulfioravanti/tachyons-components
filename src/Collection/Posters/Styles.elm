module Collection.Posters.Styles exposing
    ( collection
    , firstCollection
    , image
    , link
    , main_
    )


collection : String
collection =
    [ "fl"
    , "ph2"
    , "w-50 w-25-ns"
    ]
        |> String.join " "


firstCollection : String
firstCollection =
    [ "fl"
    , "ph2"
    , "w-100 w-50-ns"
    ]
        |> String.join " "


image : String
image =
    [ "db"
    , "w-100"
    ]
        |> String.join " "


link : String
link =
    [ "black"
    , "db"
    , "grow"
    , "no-underline"
    , "pv2"
    ]
        |> String.join " "


main_ : String
main_ =
    [ "cf"
    , "pa2"
    ]
        |> String.join " "
