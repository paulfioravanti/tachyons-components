module Footer.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = CenteredIconsHoverGlow
    | InlineText
    | SimpleLargeType
    | SmallPrint
    | SocialCircles
    | SocialSimple
    | SocialSimpleText


matchers : Parser (Route -> a) a
matchers =
    [ CenteredIconsHoverGlow
    , InlineText
    , SimpleLargeType
    , SmallPrint
    , SocialCircles
    , SocialSimple
    , SocialSimpleText
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
