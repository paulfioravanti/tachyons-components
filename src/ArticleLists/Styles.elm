module ArticleLists.Styles exposing (bodyClasses)

import ArticleLists.Route exposing (Route(TitlePreviewAuthorMediaFlipped))


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        TitlePreviewAuthorMediaFlipped ->
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]
