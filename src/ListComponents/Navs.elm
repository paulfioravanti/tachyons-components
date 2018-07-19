module ListComponents.Navs exposing (view)

import Nav
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Navs))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Nav"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "nav/fixed-semi-transparent/"
                    "Fixed Semi Transparent"
                    changeLocationMsg
                    (Navs Nav.fixedSemiTransparentRoute)
                , Utils.component
                    "nav/large-title-link-list/"
                    "Large Title Link List"
                    changeLocationMsg
                    (Navs Nav.largeTitleLinkListRoute)
                , Utils.component
                    "nav/list-overflow/"
                    "List Overflow"
                    changeLocationMsg
                    (Navs Nav.listOverflowRoute)
                , Utils.component
                    "nav/logo-links-inline-collapse/"
                    "Logo Links Inline Collapse"
                    changeLocationMsg
                    (Navs Nav.logoLinksInlineCollapseRoute)
                , Utils.component
                    "nav/logo-links-inline/"
                    "Logo Links Inline"
                    changeLocationMsg
                    (Navs Nav.logoLinksInlineRoute)
                , Utils.component
                    "nav/logo-titles-links-centered/"
                    "Logo Titles Links Centered"
                    changeLocationMsg
                    (Navs Nav.logoTitlesLinksCenteredRoute)
                , Utils.component
                    "nav/minimal-sign-up/"
                    "Minimal Sign Up"
                    changeLocationMsg
                    (Navs Nav.minimalSignUpRoute)
                , Utils.component
                    "nav/title-link-list/"
                    "Title Link List"
                    changeLocationMsg
                    (Navs Nav.titleLinkListRoute)
                ]
            ]
        ]
