module Button.BasicPreviousNext.View exposing (view)

import Button.BasicPreviousNext.Styles as Styles
import Html exposing (Html, a, div, span, text)
import Html.Attributes exposing (attribute, class, href, style)
import Svg exposing (path, svg, title)
import Svg.Attributes exposing (d, viewBox)


view : Html msg -> Html msg
view footer =
    div []
        [ div [ class Styles.container ]
            [ previousButton
            , nextButton
            ]
        , footer
        ]


previousButton : Html msg
previousButton =
    let
        chevronLeftIconPath =
            """
            M 20 1
            L 24 5
            L 14 16
            L 24 27
            L 20 31
            L6 16
            z
            """
    in
        a [ class Styles.previousButton, href "#0" ]
            [ svgTag "chevronLeft" chevronLeftIconPath
            , span [ class Styles.previousLabel ]
                [ text "Previous" ]
            ]


nextButton : Html msg
nextButton =
    let
        chevronRightIconPath =
            """
            M 12 1
            L 26 16
            L 12 31
            L 8 27
            L 18 16
            L 8 5
            z
            """
    in
        a [ class Styles.nextButton, href "#0" ]
            [ span [ class Styles.nextLabel ]
                [ text "Next" ]
            , svgTag "chevronRight" chevronRightIconPath
            ]


button : String -> String -> String -> String -> String -> Html msg
button linkStyles iconName iconPath labelStyles labelText =
    a [ class linkStyles, href "#0" ]
        [ svg
            [ Svg.Attributes.class Styles.svg
            , attribute "data-icon" iconName
            , viewBox "0 0 32 32"
            , style [ ( "fill", "currentColor" ) ]
            ]
            [ title [] [ text (iconName ++ " icon") ]
            , path [ d iconPath ] []
            ]
        , span [ class labelStyles ]
            [ text labelText ]
        ]


svgTag : String -> String -> Html msg
svgTag iconName iconPath =
    svg
        [ Svg.Attributes.class Styles.svg
        , attribute "data-icon" iconName
        , viewBox "0 0 32 32"
        , style [ ( "fill", "currentColor" ) ]
        ]
        [ title [] [ text (iconName ++ " icon") ]
        , path [ d iconPath ] []
        ]
