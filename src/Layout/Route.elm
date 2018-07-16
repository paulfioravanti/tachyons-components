module Layout.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AspectRatio16x9
    | AspectRatio1x1
    | AspectRatio3x4
    | AspectRatio4x3
    | AspectRatio4x6
    | AspectRatio5x7
    | AspectRatio5x8
    | AspectRatio6x4


matchers : Parser (Route -> a) a
matchers =
    [ AspectRatio16x9
    , AspectRatio1x1
    , AspectRatio3x4
    , AspectRatio4x3
    , AspectRatio4x6
    , AspectRatio5x7
    , AspectRatio5x8
    , AspectRatio6x4
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
