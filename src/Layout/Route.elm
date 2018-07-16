module Layout.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AspectRatio16x9
    | AspectRatio1x1
    | AspectRatio3x4


matchers : Parser (Route -> a) a
matchers =
    [ AspectRatio16x9
    , AspectRatio1x1
    , AspectRatio3x4
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
