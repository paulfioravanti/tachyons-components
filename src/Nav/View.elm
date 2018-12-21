module Nav.View exposing (view)

import Html exposing (Html)
import Nav.FixedSemiTransparent.View as FixedSemiTransparent
import Nav.LargeTitleLinkList.View as LargeTitleLinkList
import Nav.ListOverflow.View as ListOverflow
import Nav.LogoLinksInline.View as LogoLinksInline
import Nav.LogoLinksInlineCollapse.View as LogoLinksInlineCollapse
import Nav.LogoTitlesLinksCentered.View as LogoTitlesLinksCentered
import Nav.MinimalSignUp.View as MinimalSignUp
import Nav.Route as Route exposing (Route)
import Nav.TitleLinkList.View as TitleLinkList


view : Route -> Html msg
view route =
    case route of
        Route.FixedSemiTransparent ->
            FixedSemiTransparent.view

        Route.LargeTitleLinkList ->
            LargeTitleLinkList.view

        Route.ListOverflow ->
            ListOverflow.view

        Route.LogoLinksInline ->
            LogoLinksInline.view

        Route.LogoLinksInlineCollapse ->
            LogoLinksInlineCollapse.view

        Route.LogoTitlesLinksCentered ->
            LogoTitlesLinksCentered.view

        Route.MinimalSignUp ->
            MinimalSignUp.view

        Route.TitleLinkList ->
            TitleLinkList.view
