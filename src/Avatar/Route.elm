module Avatar.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
import Utils


type Route
    = Circle
    | CircleBorder
    | DoubleRing
    | RoundedLarge
    | RoundedMedium
    | RoundedSmall
    | Square


matchers : Parser (Route -> a) a
matchers =
    [ Circle
    , CircleBorder
    , DoubleRing
    , RoundedLarge
    , RoundedMedium
    , RoundedSmall
    , Square
    ]
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
