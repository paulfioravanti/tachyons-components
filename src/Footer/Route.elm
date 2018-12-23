module Footer.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = CenteredIconsHoverGlow
    | InlineText
    | SimpleLargeType
    | SmallPrint
    | Social
    | SocialCircles
    | SocialSimple
    | SocialSimpleText
    | SocialText
    | Studios


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
    [ CenteredIconsHoverGlow
    , InlineText
    , SimpleLargeType
    , SmallPrint
    , Social
    , SocialCircles
    , SocialSimple
    , SocialSimpleText
    , SocialText
    , Studios
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        CenteredIconsHoverGlow ->
            "centered-icons-hover-glow"

        InlineText ->
            "inline-text"

        SimpleLargeType ->
            "simple-large-type"

        SmallPrint ->
            "small-print"

        Social ->
            "social"

        SocialCircles ->
            "social-circles"

        SocialSimple ->
            "social-simple"

        SocialSimpleText ->
            "social-simple-text"

        SocialText ->
            "social-text"

        Studios ->
            "studios"
