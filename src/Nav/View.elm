module Nav.View exposing (view)

import Html exposing (Html)
import Nav.FixedSemiTransparent.View as FixedSemiTransparent
import Nav.LargeTitleLinkList.View as LargeTitleLinkList
import Nav.ListOverflow.View as ListOverflow
import Nav.LogoLinksInline.View as LogoLinksInline
import Nav.LogoLinksInlineCollapse.View as LogoLinksInlineCollapse
import Nav.LogoTitlesLinksCentered.View as LogoTitlesLinksCentered
import Nav.Route
    exposing
        ( Route
            ( FixedSemiTransparent
            , LargeTitleLinkList
            , ListOverflow
            , LogoLinksInline
            , LogoLinksInlineCollapse
            , LogoTitlesLinksCentered
            )
        )


view : Route -> Html msg
view route =
    case route of
        FixedSemiTransparent ->
            FixedSemiTransparent.view

        LargeTitleLinkList ->
            LargeTitleLinkList.view

        ListOverflow ->
            ListOverflow.view

        LogoLinksInline ->
            LogoLinksInline.view

        LogoLinksInlineCollapse ->
            LogoLinksInlineCollapse.view

        LogoTitlesLinksCentered ->
            LogoTitlesLinksCentered.view
