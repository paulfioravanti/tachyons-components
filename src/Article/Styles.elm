module Article.Styles exposing (bodyClasses)

import Article.Route
    exposing
        ( Route
            ( Feature
            , FullBleedBackground
            )
        )


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        _ ->
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]
