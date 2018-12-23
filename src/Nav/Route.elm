module Nav.Route exposing (Route(..), matchers, toPath)

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
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
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


toPath : Route -> String
toPath route =
    case route of
        FixedSemiTransparent ->
            "fixed-semi-transparent"

        LargeTitleLinkList ->
            "large-title-link-list"

        ListOverflow ->
            "list-overflow"

        LogoLinksInline ->
            "logo-links-inline"

        LogoLinksInlineCollapse ->
            "logo-links-inline-collapse"

        LogoTitlesLinksCentered ->
            "logo-titles-links-centered"

        MinimalSignUp ->
            "minimal-sign-up"

        TitleLinkList ->
            "title-link-list"
