module Header.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
        |> Url.Parser.oneOf
