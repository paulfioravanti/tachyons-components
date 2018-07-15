module Footer.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = CenteredIconsHoverGlow
    | InlineText
    | SimpleLargeType


matchers : Parser (Route -> a) a
matchers =
    [ CenteredIconsHoverGlow
    , InlineText
    , SimpleLargeType
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
