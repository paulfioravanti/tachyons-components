module Footer.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, s)
import Utils


type Route
    = CenteredIconsHoverGlow


matchers : Parser (Route -> a) a
matchers =
    [ CenteredIconsHoverGlow
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
