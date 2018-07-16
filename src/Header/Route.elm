module Header.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = CircleAvatarTitleSubtitle
    | RoundedAvatarTitleSubtitle
    | StartupHero


matchers : Parser (Route -> a) a
matchers =
    [ CircleAvatarTitleSubtitle
    , RoundedAvatarTitleSubtitle
    , StartupHero
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
