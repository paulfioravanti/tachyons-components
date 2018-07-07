module Banner.Styles exposing (bodyClasses)

import Banner.Route
    exposing
        ( Route
            ( Basic
            )
        )


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        _ ->
            [ "bg-near-white"
            , "sans-serif"
            , "w-100"
            ]
