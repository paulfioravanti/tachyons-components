module Header.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = CircleAvatarTitleSubtitle
    | RoundedAvatarTitleSubtitle
    | StartupHero


matchers : Parser (Route -> a) a
matchers =
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
    [ CircleAvatarTitleSubtitle
    , RoundedAvatarTitleSubtitle
    , StartupHero
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        CircleAvatarTitleSubtitle ->
            "circle-avatar-title-subtitle"

        RoundedAvatarTitleSubtitle ->
            "rounded-avatar-title-subtitle"

        StartupHero ->
            "startup-hero"
