module ArticleList.Styles exposing (bodyClasses, flexFormatting, image)

import ArticleList.Route
    exposing
        ( Route
            ( TitlePreviewAuthorMedia
            , TitlePreviewAuthorMediaFlipped
            )
        )


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        TitlePreviewAuthorMedia ->
            [ "bg-near-white"
            , "sans-serif"
            , "w-100"
            ]

        TitlePreviewAuthorMediaFlipped ->
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]


flexFormatting : String
flexFormatting =
    [ "flex"
    , "flex-column flex-row-ns"
    ]
        |> String.join " "


image : String
image =
    "db"
