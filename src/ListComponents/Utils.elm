module ListComponents.Utils exposing (component, componentsLink, sectionHeader)

import Html exposing (Html, a, div, h3, p, text)
import Html.Attributes exposing (attribute, class, href, id, title)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import ListComponents.Styles as Styles
import Msg exposing (Msg(ChangeLocation))
import Route exposing (Route(ListComponents))


component : String -> String -> String -> Html Msg
component link linkTitle imageLocation =
    let
        screenshot =
            "/components/"
                ++ imageLocation
                ++ "/screenshot.jpg"
    in
        a
            [ class Styles.sectionContentLink
            , href link
            , title linkTitle
            ]
            [ div [ class Styles.sectionContentLinkContent ]
                [ div
                    [ class Styles.sectionContentLinkImage
                    , attribute "data-bg" screenshot
                    ]
                    []
                ]
            , p [ class Styles.sectionContentTitle ]
                [ text linkTitle ]
            ]


componentsLink : String -> Html Msg
componentsLink styles =
    let
        clickOptions =
            onWithOptions
                "click"
                { preventDefault = True, stopPropagation = False }
                (Decode.succeed (ChangeLocation ListComponents))
    in
        a
            [ class styles
            , href (Route.toPath ListComponents)
            , title "Components"
            , clickOptions
            ]
            [ text "Components" ]


sectionHeader : String -> String -> Html Msg
sectionHeader sectionId sectionTitle =
    div [ class Styles.sectionHeader, id sectionId ]
        [ div [ class Styles.centerContent ]
            [ h3 [ class Styles.sectionTitle ]
                [ text sectionTitle ]
            ]
        ]
