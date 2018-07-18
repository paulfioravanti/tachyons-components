module Link.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AnimateBackgroundColor
    | AnimateColor
    | DimNoUnderline


matchers : Parser (Route -> a) a
matchers =
    [ AnimateBackgroundColor
    , AnimateColor
    , DimNoUnderline
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
