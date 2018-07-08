module Banner.Info.View exposing (view)

import Banner.Info.Styles as Styles
import Html exposing (Html, div, span, text)
import Html.Attributes exposing (attribute, class, style)
import Svg exposing (path, svg, title)
import Svg.Attributes exposing (d, viewBox)


view : Html msg -> Html msg
view footer =
    div []
        [ div [ class Styles.banner ]
            [ icon
            , span [ class Styles.heading ]
                [ text "Some info that you want to call attention to." ]
            ]
        , footer
        ]


icon : Html msg
icon =
    let
        iconPath =
            """
            M16 0 A16 16 0 0 1 16 32 A16 16 0 0 1 16 0 M19 15 L13 15 L13 26
            L19 26 z M16 6 A3 3 0 0 0 16 12 A3 3 0 0 0 16 6
            """
    in
        svg
            [ Svg.Attributes.class Styles.svg
            , style [ ( "fill", "currentColor" ) ]
            , attribute "data-icon" "info"
            , viewBox "0 0 32 32"
            ]
            [ title [] [ text "info icon" ]
            , path [ d iconPath ] []
            ]
