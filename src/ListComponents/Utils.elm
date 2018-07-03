module ListComponents.Utils exposing (component, sectionHeader)

import Html exposing (Html, a, div, h3, p, text)
import Html.Attributes exposing (attribute, class, href, id, title)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import ListComponents.Styles as Styles
import Styles


component : String -> String -> msg -> Html msg
component url linkTitle msg =
    let
        componentsUrl =
            "/components/" ++ url

        screenshotUrl =
            componentsUrl ++ "screenshot.jpg"

        clickOptions =
            onWithOptions
                "click"
                { preventDefault = True, stopPropagation = False }
                (Decode.succeed msg)
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


sectionHeader : String -> String -> Html msg
sectionHeader sectionId sectionTitle =
    div [ class Styles.sectionHeader, id sectionId ]
        [ div [ class Styles.centerContent ]
            [ h3 [ class Styles.sectionTitle ]
                [ text sectionTitle ]
            ]
        ]
