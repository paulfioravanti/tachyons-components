module Layout.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AspectRatio16x9
    | AspectRatio1x1


matchers : Parser (Route -> a) a
matchers =
    [ AspectRatio16x9
    , AspectRatio1x1
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
