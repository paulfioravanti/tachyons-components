module ListComponents.Utils exposing (component, sectionHeader)

import Html exposing (Html, a, div, h3, p, text)
import Html.Attributes exposing (attribute, class, href, id, title)
import Html.Events exposing (custom)
import Json.Decode as Decode
import ListComponents.Styles as Styles
import Route exposing (Route)
import Styles
import Utils


component : String -> String -> Route -> Html msg
component url linkTitle route =
    let
        componentsUrl =
            "/components/" ++ url

        screenshotUrl =
            componentsUrl ++ "screenshot.jpg"
    in
    a
        [ class Styles.sectionContentLink
        , href componentsUrl
        , title linkTitle
        ]
        [ div [ class Styles.sectionContentLinkContent ]
            [ div
                [ class (Styles.sectionContentLinkImage route)
                , attribute "data-bg" screenshotUrl
                ]
                []
            ]
        , p [ class Styles.sectionContentTitle ]
            [ text linkTitle ]
        ]


sectionHeader : String -> Html msg
sectionHeader sectionTitle =
    let
        sectionId =
            sectionTitle
                |> Utils.toPath
    in
    div [ class Styles.sectionHeader, id sectionId ]
        [ div [ class Styles.centerContent ]
            [ h3 [ class Styles.sectionTitle ]
                [ text sectionTitle ]
            ]
        ]
