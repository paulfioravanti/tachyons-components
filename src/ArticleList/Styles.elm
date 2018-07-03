module ArticleList.Styles exposing (bodyClasses)

import ArticleList.Route exposing (Route(TitlePreviewAuthorMediaFlipped))


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        TitlePreviewAuthorMediaFlipped ->
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]
