module ArticleList.Styles exposing (bodyClasses)

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
