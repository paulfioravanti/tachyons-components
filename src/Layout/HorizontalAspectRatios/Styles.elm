module Layout.HorizontalAspectRatios.Styles
    exposing
        ( article
        , image
        , imageType
        , title
        )


article : String
article =
    """
    bg-light-gray
    center
    mw5 mw7-ns
    pa3 pa5-ns
    """


image : String
image =
    """
    aspect-ratio--object
    bg-center
    cover
    """


imageType : String -> String -> String
imageType width height =
    [ "aspect-ratio"
    , "aspect-ratio--" ++ width ++ "x" ++ height
    , "mb4"
    ]
        |> String.join " "


title : String
title =
    "f6"
