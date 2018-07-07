module Avatar.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = CircleBorder


matchers : Parser (Route -> a) a
matchers =
    [ CircleBorder
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
