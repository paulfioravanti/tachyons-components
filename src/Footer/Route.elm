module Footer.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
        |> Url.Parser.oneOf
