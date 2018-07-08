module Banner.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Basic
    | Info


matchers : Parser (Route -> a) a
matchers =
    [ Basic
    , Info
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
