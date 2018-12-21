module Banner.Info.View exposing (view)

import Banner.Info.Styles as Styles
import Html exposing (Html, div, span, text)
import Html.Attributes exposing (attribute, class, style)
import Svg exposing (path, svg, title)
import Svg.Attributes exposing (d, viewBox)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.banner ]
            [ icon
            , span [ class Styles.heading ]
                [ text "Some info that you want to call attention to." ]
            ]
        ]


icon : Html msg
icon =
    let
        iconPath =
            """
            M 16 0
            A 16 16 0 0 1 16 32
            A 16 16 0 0 1 16 0
            M 19 15
            L 13 15
            L 13 26
            L 19 26
            z
            M 16 6
            A 3 3 0 0 0 16 12
            A 3 3 0 0 0 16 6
            """
    in
    svg
        [ Svg.Attributes.class Styles.svg
        , style "fill" "currentColor"
        , attribute "data-icon" "info"
        , viewBox "0 0 32 32"
        ]
        [ title [] [ text "info icon" ]
        , path [ d iconPath ] []
        ]
