module View exposing (view)

import Html exposing (Html, a, div, header, nav, small, text)
import Html.Attributes exposing (class, href, title)
import Model exposing (Model)
import Msg exposing (Msg)
import Styles


view : Model -> Html Msg
view model =
    div []
        [ pageHeader ]


pageHeader : Html Msg
pageHeader =
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
        [ a
            [ class Styles.navLink
            , href "http://tachyons.io/docs"
            , title "Documentation"
            ]
            [ text "Docs" ]
        , a
            [ class Styles.navLink
            , href "#"
            , title "Components"
            ]
            [ text "Components" ]
        , a
            [ class Styles.navLink
            , href "http://tachyons.io/gallery"
            , title "Gallery of sites built with Tachyons"
            ]
            [ text "Gallery" ]
        , a
            [ class Styles.navLink
            , href "http://tachyons.io/resources"
            , title "Resources"
            ]
            [ text "Resources" ]
        , a
            [ class Styles.navLink
            , href "http://github.com/tachyons-css/tachyons"
            , title "Tachyons on Github"
            ]
            [ text "Github" ]
        ]
