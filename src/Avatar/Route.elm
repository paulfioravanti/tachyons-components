module Avatar.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Circle
    | CircleBorder
    | DoubleRing


matchers : Parser (Route -> a) a
matchers =
    [ Circle
    , CircleBorder
    , DoubleRing
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
