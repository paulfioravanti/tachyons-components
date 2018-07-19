module Nav.TitleLinkList.View exposing (view)

import Html exposing (Html, a, div, nav, text)
import Html.Attributes exposing (attribute, class, href, title)
import Nav.TitleLinkList.Styles as Styles


view : Html msg
view =
    let
        navLinkNames =
            [ "Home", "About", "Store" ]

        lastNavLink =
            navLink Styles.lastNavLink "Contact" []
    in
        div [ attribute "data-name" "component" ]
            [ nav [ class Styles.navLinks ]
                (homeNavLink
                    :: List.foldr
                        (navLink Styles.navLink)
                        lastNavLink
                        navLinkNames
                )
            ]


homeNavLink : Html msg
homeNavLink =
    a [ class Styles.firstNavLink, href "#", title "Site Name" ]
        [ text "Site Name" ]


navLink : String -> String -> List (Html msg) -> List (Html msg)
navLink styles name acc =
    let
        link =
            a [ class styles, href "#", title name ]
                [ text name ]
    in
        link :: acc
