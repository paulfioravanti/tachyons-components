module Collection.Movies.Styles exposing (image, link)


image : String
image =
    [ "aspect-ratio--4x6"
    , "bg-center"
    , "cover"
    , "grow"
    ]
        |> String.join " "


link : String
link =
    [ "fl"
    , "link"
    , "overflow-hidden"
    , "w-50 w-25-l"
    ]
        |> String.join " "
