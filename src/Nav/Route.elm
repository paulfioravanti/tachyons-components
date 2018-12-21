module Nav.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
import Utils


type Route
    = FixedSemiTransparent
    | LargeTitleLinkList
    | ListOverflow
    | LogoLinksInline
    | LogoLinksInlineCollapse
    | LogoTitlesLinksCentered
    | MinimalSignUp
    | TitleLinkList


matchers : Parser (Route -> a) a
matchers =
    [ FixedSemiTransparent
    , LargeTitleLinkList
    , ListOverflow
    , LogoLinksInline
    , LogoLinksInlineCollapse
    , LogoTitlesLinksCentered
    , MinimalSignUp
    , TitleLinkList
    ]
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
