module Banner.Styles exposing (bodyClasses)

import Banner.Route exposing (Route)


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        _ ->
            [ "bg-white"
            , "pt5"
            , "sans-serif"
            , "w-100"
            ]
