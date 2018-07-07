module Avatar.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Circle
    | CircleBorder
    | DoubleRing
    | RoundedLarge


matchers : Parser (Route -> a) a
matchers =
    [ Circle
    , CircleBorder
    , DoubleRing
    , RoundedLarge
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
