module Button.Pill.View exposing (view)

import Button.Colour as Colour
import Button.Pill.Styles as Styles
import Html exposing (Html, a, div, h1, text)
import Html.Attributes exposing (attribute, class, href)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ section "Basic Pill" Styles.basicButton "" ""
        , section
            "Pill with Thin Border"
            Styles.basicButtonWithThinBorder
            Styles.topMargin
            ""
        , section
            "Pill with Border"
            Styles.basicButtonWithBorder
            Styles.topMargin
            ""
        , section
            "Pill with Thick Border"
            Styles.basicButtonWithThickBorder
            Styles.topMargin
            Styles.bottomMargin
        ]


section : String -> (String -> String) -> String -> String -> Html msg
section title styles topMargin bottomMargin =
    let
        ( firstList, secondList, thirdList ) =
            Colour.lists

        heading =
            h1 [ class Styles.heading ]
                [ text title ]
    in
    div []
        [ div [ class (Styles.topSection topMargin) ]
            (heading :: List.map (button styles) firstList)
        , div [ class (Styles.section "") ]
            (List.map (button styles) secondList)
        , div [ class (Styles.section bottomMargin) ]
            (List.map (button styles) thirdList)
        ]


button : (String -> String) -> String -> Html msg
button style colour =
    a [ class (style colour), href "#0" ]
        [ text "Button Text" ]
