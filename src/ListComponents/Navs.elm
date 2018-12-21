module ListComponents.Navs exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Nav
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Nav"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "nav/fixed-semi-transparent/"
                    "Fixed Semi Transparent"
                    (Route.Navs Nav.fixedSemiTransparentRoute)
                , Utils.component
                    "nav/large-title-link-list/"
                    "Large Title Link List"
                    (Route.Navs Nav.largeTitleLinkListRoute)
                , Utils.component
                    "nav/list-overflow/"
                    "List Overflow"
                    (Route.Navs Nav.listOverflowRoute)
                , Utils.component
                    "nav/logo-links-inline-collapse/"
                    "Logo Links Inline Collapse"
                    (Route.Navs Nav.logoLinksInlineCollapseRoute)
                , Utils.component
                    "nav/logo-links-inline/"
                    "Logo Links Inline"
                    (Route.Navs Nav.logoLinksInlineRoute)
                , Utils.component
                    "nav/logo-titles-links-centered/"
                    "Logo Titles Links Centered"
                    (Route.Navs Nav.logoTitlesLinksCenteredRoute)
                , Utils.component
                    "nav/minimal-sign-up/"
                    "Minimal Sign Up"
                    (Route.Navs Nav.minimalSignUpRoute)
                , Utils.component
                    "nav/title-link-list/"
                    "Title Link List"
                    (Route.Navs Nav.titleLinkListRoute)
                ]
            ]
        ]
