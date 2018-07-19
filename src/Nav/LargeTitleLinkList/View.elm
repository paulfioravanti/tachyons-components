module Nav.LargeTitleLinkList.View exposing (view)

import Html exposing (Html, a, div, nav, text)
import Html.Attributes exposing (attribute, class, href, title)
import Nav.LargeTitleLinkList.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ nav [ class Styles.nav ]
            [ homeLink
            , navLinks
            ]
        ]


homeLink : Html msg
homeLink =
    a [ class Styles.homeLink, href "#", title "Home" ]
        [ text "Site Name" ]


navLinks : Html msg
navLinks =
    let
        navLinkNames =
            [ "Home", "About", "Store" ]

        lastNavLink =
            navLink Styles.lastNavLink "Contact" []
    in
        div [ class Styles.navLinks ]
            (List.foldr (navLink Styles.navLink) lastNavLink navLinkNames)


navLink : String -> String -> List (Html msg) -> List (Html msg)
navLink styles name acc =
    let
        link =
            a [ class styles, href "#", title name ]
                [ text name ]
    in
        link :: acc
