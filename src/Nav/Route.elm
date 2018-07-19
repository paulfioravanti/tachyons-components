module Nav.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = FixedSemiTransparent
    | LargeTitleLinkList
    | ListOverflow
    | LogoLinksInline
    | LogoLinksInlineCollapse
    | LogoTitlesLinksCentered


matchers : Parser (Route -> a) a
matchers =
    [ FixedSemiTransparent
    , LargeTitleLinkList
    , ListOverflow
    , LogoLinksInline
    , LogoLinksInlineCollapse
    , LogoTitlesLinksCentered
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
