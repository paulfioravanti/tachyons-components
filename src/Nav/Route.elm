module Nav.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = FixedSemiTransparent
    | LargeTitleLinkList
    | ListOverflow
    | LogoLinksInline
    | LogoLinksInlineCollapse


matchers : Parser (Route -> a) a
matchers =
    [ FixedSemiTransparent
    , LargeTitleLinkList
    , ListOverflow
    , LogoLinksInline
    , LogoLinksInlineCollapse
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
