module Nav.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, s)
import Utils


type Route
    = FixedSemiTransparent


matchers : Parser (Route -> a) a
matchers =
    [ FixedSemiTransparent
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
