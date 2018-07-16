module Header.StartupHero.View exposing (view)

import Header.StartupHero.Styles as Styles
import Html exposing (Html, a, div, h1, h2, header, nav, span, text)
import Html.Attributes exposing (attribute, class, href, style)
import Svg exposing (path, svg, title)
import Svg.Attributes exposing (d, viewBox)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ header [ class Styles.header ]
            [ div
                [ class Styles.backgroundImage
                , style
                    [ ( "backgroundImage"
                      , "url(http://mrmrs.github.io/photos/u/011.jpg)"
                      )
                    ]
                ]
                [ div [ class Styles.content ]
                    [ navigation
                    , hero
                    ]
                ]
            ]
        ]


navigation : Html msg
navigation =
    nav [ class Styles.nav ]
        [ logo
        , navLinks
        ]


logo : Html msg
logo =
    let
        logoPath =
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
        div [ class Styles.logo ]
            [ a [ href "/", class Styles.logoLink ]
                [ svg
                    [ Svg.Attributes.class Styles.svg
                    , attribute "data-icon" "skull"
                    , viewBox "0 0 32 32"
                    , style [ ( "fill", "currentColor" ) ]
                    ]
                    [ title [] [ text "skull icon" ]
                    , path [ d logoPath ] []
                    ]
                ]
            ]


navLinks : Html msg
navLinks =
    div [ class Styles.navLinks ]
        [ a [ class Styles.howItWorksLink, href "/" ]
            [ text "How it Works" ]
        , a [ class Styles.pricingLink, href "/" ]
            [ text "Pricing" ]
        , a [ class Styles.aboutLink, href "/" ]
            [ text "About" ]
        , a [ class Styles.careersLink, href "/" ]
            [ text "Careers" ]
        , a [ class Styles.signUpLink, href "/" ]
            [ text "Sign Up" ]
        ]


hero : Html msg
hero =
    let
        subheading =
            """
            Now a subheadline where explain your wonderful
            new startup even more
            """
    in
        div [ class Styles.hero ]
            [ h1 [ class Styles.heading ]
                [ text "This is your super impressive headline" ]
            , h2 [ class Styles.subheading ]
                [ text subheading ]
            , a [ class Styles.primaryCta, href "/" ]
                [ text "Call to Action" ]
            , span [ class Styles.span ]
                [ text "or" ]
            , a [ class Styles.secondaryCta, href "/" ]
                [ text "Secondary call to action" ]
            ]
