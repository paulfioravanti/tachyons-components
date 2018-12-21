module Nav.LogoTitlesLinksCentered.View exposing (view)

import Html exposing (Html, a, div, h1, h2, header, nav, text)
import Html.Attributes exposing (attribute, class, href, style)
import Nav.LogoTitlesLinksCentered.Styles as Styles
import Svg exposing (path, svg, title)
import Svg.Attributes exposing (d, viewBox)


view : Html msg
view =
    let
        navLinks =
            [ ( "lightest-blue", "/", "Home" )
            , ( "light-green", "/portfolio", "Portfolio" )
            , ( "light-blue", "/shop", "Shop" )
            , ( "light-pink", "/about", "About" )
            , ( "light-yellow", "/contact", "Contact" )
            ]
    in
    div [ attribute "data-name" "component" ]
        [ header [ class Styles.header ]
            [ logo
            , h1 [ class Styles.heading ]
                [ text "Title" ]
            , h2 [ class Styles.subheading ]
                [ text "Your amazing subtitle" ]
            , nav [ class Styles.navLinks ]
                (List.map navLink navLinks)
            ]
        ]


logo : Html msg
logo =
    let
        iconPath =
            """
            M16 0
            C6 0 2 4 2 14
            L2 22
            L6 24
            L6 30
            L26 30
            L26 24
            L30 22
            L30 14
            C30 4 26 0 16 0
            M9 12
            A4.5 4.5 0 0 1 9 21
            A4.5 4.5 0 0 1 9 12
            M23 12
            A4.5 4.5 0 0 1 23 21
            A4.5 4.5 0 0 1 23 12
            """
    in
    a [ class Styles.imageLink, href "#" ]
        [ svg
            [ Svg.Attributes.class Styles.image
            , attribute "data-icon" "skull"
            , viewBox "0 0 32 32"
            , style "fill" "currentColor"
            ]
            [ title []
                [ text "skull icon" ]
            , path [ d iconPath ] []
            ]
        ]


navLink : ( String, String, String ) -> Html msg
navLink ( bgColour, url, name ) =
    a [ class (Styles.navLink bgColour), href url ]
        [ text name ]
