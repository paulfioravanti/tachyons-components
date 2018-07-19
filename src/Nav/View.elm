module Nav.View exposing (view)

import Html exposing (Html)
import Nav.FixedSemiTransparent.View as FixedSemiTransparent
import Nav.LargeTitleLinkList.View as LargeTitleLinkList
import Nav.ListOverflow.View as ListOverflow
import Nav.LogoLinksInlineCollapse.View as LogoLinksInlineCollapse
import Nav.Route
    exposing
        ( Route
            ( FixedSemiTransparent
            , LargeTitleLinkList
            , ListOverflow
            , LogoLinksInlineCollapse
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

        LogoLinksInlineCollapse ->
            LogoLinksInlineCollapse.view
