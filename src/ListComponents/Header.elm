module ListComponents.Header exposing (view)

import Html exposing (Html, a, div, header, nav, small, text)
import Html.Attributes exposing (class, href, title)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Msg exposing (Msg)


view : Html Msg
view =
    header [ class Styles.header ]
        [ div [ class Styles.headerContent ]
            [ pageTitle
            , pageHeaderNav
            ]
        ]


pageTitle : Html Msg
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


pageHeaderNav : Html Msg
pageHeaderNav =
    nav [ class Styles.nav ]
        [ link "http://tachyons.io/docs" "Documentation" "Docs"
        , Utils.componentsLink Styles.navLink
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


link : String -> String -> String -> Html Msg
link url linkTitle linkText =
    a [ class Styles.navLink, href url, title linkTitle ]
        [ text linkText ]
