module Footer.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


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
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
