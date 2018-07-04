module Article.Styles exposing (bodyClasses)

import Article.Route
    exposing
        ( Route
            ( Feature
            )
        )


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        Feature ->
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]
