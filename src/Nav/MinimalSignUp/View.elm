module Nav.MinimalSignUp.View exposing (view)

import Html exposing (Html, a, div, nav, text)
import Html.Attributes exposing (attribute, class, href, style)
import Nav.MinimalSignUp.Styles as Styles
import Svg exposing (path, svg, title)
import Svg.Attributes exposing (d, viewBox)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ nav [ class Styles.nav ]
            [ logo
            , div [ class Styles.navLinks ]
                [ a [ class Styles.navLink, href "#0" ]
                    [ text "About" ]
                , a [ class Styles.navLink, href "#0" ]
                    [ text "Sign In" ]
                , a [ class Styles.signUpLink, href "#0" ]
                    [ text "Sign Up" ]
                ]
            ]
        ]


logo : Html msg
logo =
    let
        iconPath =
            """
            M2 2
            L10 2
            L10 10
            L2 10
            z
            M12 2
            L20 2
            L20 10
            L12 10
            z
            M22 2
            L30 2
            L30 10
            L22 10
            z
            M2 12
            L10 12
            L10 20
            L2 20
            z
            M12 12
            L20 12
            L20 20
            L12 20
            z
            M22 12
            L30 12
            L30 20
            L22 20
            z
            M2 22
            L10 22
            L10 30
            L2 30
            z
            M12 22
            L20 22
            L20 30
            L12 30
            z
            M22 22
            L30 22
            L30 30
            L22 30
            z
            """
    in
    a [ class Styles.imageLink, href "#" ]
        [ svg
            [ Svg.Attributes.class Styles.image
            , attribute "data-icon" "grid"
            , viewBox "0 0 32 32"
            , style "fill" "currentColor"
            ]
            [ title [] [ text "Super Normal Icon Mark" ]
            , path [ d iconPath ] []
            ]
        ]
