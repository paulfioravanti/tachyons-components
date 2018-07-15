module Footer.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = CenteredIconsHoverGlow
    | InlineText


matchers : Parser (Route -> a) a
matchers =
    [ CenteredIconsHoverGlow
    , InlineText
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
