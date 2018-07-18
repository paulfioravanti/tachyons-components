module Link.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AnimateBackgroundColor
    | AnimateColor


matchers : Parser (Route -> a) a
matchers =
    [ AnimateBackgroundColor
    , AnimateColor
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
