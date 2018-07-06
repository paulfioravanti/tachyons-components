module Avatar.Styles exposing (bodyClasses)

import Avatar.Route exposing (Route)


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        _ ->
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]
