module ListComponents.Header exposing (view)

import Html exposing (Html, a, div, header, nav, small, text)
import Html.Attributes exposing (class, href, title)
import ListComponents.Styles as Styles
import Route exposing (Route(ListComponents))
import Utils


view : msg -> Html msg
view msg =
    header [ class Styles.header ]
        [ div [ class Styles.headerContent ]
            [ pageTitle
            , pageHeaderNav msg
            ]
        ]


pageTitle : Html msg
pageTitle =
    div [ class Styles.title ]
        [ a
            [ class Styles.titleLink
            , href "http://tachyons.io/"
            , title "Home"
            ]
            [ text "Tachyons "
            , div [ class Styles.versionNumberWrapper ]
                [ small [ class Styles.versionNumber ]
                    [ text "v4.9.1" ]
                ]
            ]
        ]


pageHeaderNav : msg -> Html msg
pageHeaderNav msg =
    nav [ class Styles.nav ]
        [ link "http://tachyons.io/docs" "Documentation" "Docs"
        , Utils.componentsLink
            msg
            (Route.toPath ListComponents)
            Styles.navLink
        , link
            "http://tachyons.io/gallery"
            "Gallery of sites built with Tachyons"
            "Gallery"
        , link "http://tachyons.io/resources" "Resources" "Resources"
        , link
            "http://github.com/tachyons-css/tachyons"
            "Tachyons on GitHub"
            "GitHub"
        ]


link : String -> String -> String -> Html msg
link url linkTitle linkText =
    a [ class Styles.navLink, href url, title linkTitle ]
        [ text linkText ]
