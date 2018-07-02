module ListComponents.Utils exposing (component, sectionHeader)

import Html exposing (Html, a, div, h3, p, text)
import Html.Attributes exposing (attribute, class, href, id, title)
import ListComponents.Styles as Styles
import Msg exposing (Msg)
import Styles


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


sectionHeader : String -> String -> Html Msg
sectionHeader sectionId sectionTitle =
    div [ class Styles.sectionHeader, id sectionId ]
        [ div [ class Styles.centerContent ]
            [ h3 [ class Styles.sectionTitle ]
                [ text sectionTitle ]
            ]
        ]
