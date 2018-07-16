module Header.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = CircleAvatarTitleSubtitle
    | RoundedAvatarTitleSubtitle


matchers : Parser (Route -> a) a
matchers =
    [ CircleAvatarTitleSubtitle
    , RoundedAvatarTitleSubtitle
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
