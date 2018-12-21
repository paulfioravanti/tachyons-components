module ErrorPage.FourOhFour.View exposing (view)

import ErrorPage.FourOhFour.Styles as Styles
import Html exposing (Html, a, div, h1, h2, header, li, p, section, text, ul)
import Html.Attributes exposing (attribute, class, href)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ section [ class Styles.section ]
            [ heading
            , p [ class Styles.callToAction ]
                [ text "Are you looking for one of these?" ]
            , links
            ]
        ]


heading : Html msg
heading =
    header [ class Styles.header ]
        [ h1 [ class Styles.heading ]
            [ text "404" ]
        , h2 [ class Styles.subheading ]
            [ text "Sorry, we can't find the page you are looking for." ]
        ]


links : Html msg
links =
    let
        linkList =
            [ ( "/", "Home" )
            , ( "/about", "About" )
            , ( "/careers", "Careers" )
            , ( "/contact", "Contact" )
            , ( "/signup", "Sign Up" )
            , ( "/help", "Help" )
            ]
    in
    ul [ class Styles.linkList ]
        (List.map linkListElement linkList)


linkListElement : ( String, String ) -> Html msg
linkListElement ( url, linkText ) =
    li [ class Styles.linkListElement ]
        [ a [ class Styles.link, href url ]
            [ text linkText ]
        ]
