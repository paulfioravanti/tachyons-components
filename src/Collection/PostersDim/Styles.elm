module Collection.PostersDim.Styles exposing (image, imageWrapper, link, main_)


image : String
image =
    [ "aspect-ratio--object"
    , "bg-center"
    , "cover"
    ]
        |> String.join " "


imageWrapper : String
imageWrapper =
    [ "aspect-ratio"
    , "aspect-ratio--5x8"
    ]
        |> String.join " "


link : String
link =
    [ "border-box"
    , "dim"
    , "fl"
    , "link"
    , "pa3"
    , "w-50 w-third-m w-25-l"
    ]
        |> String.join " "


main_ : String
main_ =
    [ "bg-black"
    , "cf"
    , "pb3"
    , "ph3"
    , "pt3"
    , "w-100"
    ]
        |> String.join " "
