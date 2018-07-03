module ListComponents.Utils exposing (component, sectionHeader)

import Html exposing (Html, a, div, h3, p, text)
import Html.Attributes exposing (attribute, class, href, id, title)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import ListComponents.Styles as Styles
import Msg exposing (Msg(ChangeLocation))
import Route exposing (Route)
import Styles


component : String -> String -> Route -> Html Msg
component url linkTitle route =
    let
        componentsUrl =
            "/components/" ++ url

        screenshotUrl =
            componentsUrl ++ "screenshot.jpg"

        clickOptions =
            onWithOptions
                "click"
                { preventDefault = True, stopPropagation = False }
                (Decode.succeed (ChangeLocation route))
    in
        a
            [ class Styles.sectionContentLink
            , href componentsUrl
            , title linkTitle
            , clickOptions
            ]
            [ div [ class Styles.sectionContentLinkContent ]
                [ div
                    [ class Styles.sectionContentLinkImage
                    , attribute "data-bg" screenshotUrl
                    ]
                    []
                ]
            , p [ class Styles.sectionContentTitle ]
                [ text linkTitle ]
            ]


sectionHeader : String -> String -> Html Msg
sectionHeader sectionId sectionTitle =
    div [ class Styles.sectionHeader, id sectionId ]
        [ div [ class Styles.centerContent ]
            [ h3 [ class Styles.sectionTitle ]
                [ text sectionTitle ]
            ]
        ]
