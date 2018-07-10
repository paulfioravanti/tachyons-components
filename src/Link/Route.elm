module Link.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, s)
import Utils


type Route
    = AnimateBackgroundColor


matchers : Parser (Route -> a) a
matchers =
    [ AnimateBackgroundColor
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
