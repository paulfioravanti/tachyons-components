module Nav.LogoLinksInlineCollapse.View exposing (view)

import Html exposing (Html, a, div, img, nav, text)
import Html.Attributes exposing (alt, attribute, class, href, src, title)
import Nav.LogoLinksInlineCollapse.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ nav [ class Styles.nav ]
            [ logo
            , navLinks
            ]
        ]


logo : Html msg
logo =
    a [ class Styles.imageLink, href "#", title "Home" ]
        [ img
            [ class Styles.image
            , src "http://tachyons.io/img/logo.jpg"
            , alt "Site Name"
            ]
            []
        ]


navLinks : Html msg
navLinks =
    let
        navLinkNames =
            [ "Home", "How it Works", "Blog", "Press" ]

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
