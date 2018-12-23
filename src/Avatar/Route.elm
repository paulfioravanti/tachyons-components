module Avatar.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


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
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
    [ Circle
    , CircleBorder
    , DoubleRing
    , RoundedLarge
    , RoundedMedium
    , RoundedSmall
    , Square
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        Circle ->
            "circle"

        CircleBorder ->
            "circle-border"

        DoubleRing ->
            "double-ring"

        RoundedLarge ->
            "rounded-large"

        RoundedMedium ->
            "rounded-medium"

        RoundedSmall ->
            "rounded-small"

        Square ->
            "square"
