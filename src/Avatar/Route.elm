module Avatar.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Circle
    | CircleBorder


matchers : Parser (Route -> a) a
matchers =
    [ Circle
    , CircleBorder
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
