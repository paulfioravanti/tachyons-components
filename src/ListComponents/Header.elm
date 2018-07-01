module ListComponents.Header exposing (view)

import Html exposing (Html, a, div, header, nav, small, text)
import Html.Attributes exposing (class, href, title)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import ListComponents.Styles as Styles
import Msg exposing (Msg(ChangeLocation))
import Route exposing (Route(ListComponents))


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
        [ a
            [ class Styles.navLink
            , href "http://tachyons.io/docs"
            , title "Documentation"
            ]
            [ text "Docs" ]
        , componentsLink
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


componentsLink : Html Msg
componentsLink =
    let
        clickOptions =
            onWithOptions
                "click"
                { preventDefault = True, stopPropagation = False }
                (Decode.succeed (ChangeLocation ListComponents))
    in
        a
            [ class Styles.navLink
            , href (Route.toPath ListComponents)
            , title "Components"
            , clickOptions
            ]
            [ text "Components" ]
