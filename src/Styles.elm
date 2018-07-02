module Styles exposing (bodyClasses, centerContent)

import Route exposing (Route(NotFound, ListComponents))


bodyClasses : Route -> String
bodyClasses route =
    let
        styles =
            case route of
                ListComponents ->
                    [ "sans-serif"
                    , "w-100"
                    ]

                NotFound ->
                    [ "sans-serif"
                    , "w-100"
                    ]
    in
        styles
            |> String.join " "


centerContent : String
centerContent =
    [ "center"
    , "mw9"
    ]
        |> String.join " "
