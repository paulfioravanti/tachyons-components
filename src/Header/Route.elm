module Header.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, s)
import Utils


type Route
    = CircleAvatarTitleSubtitle


matchers : Parser (Route -> a) a
matchers =
    [ CircleAvatarTitleSubtitle
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
