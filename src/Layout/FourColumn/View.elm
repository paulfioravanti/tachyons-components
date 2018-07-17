module Layout.FourColumn.View exposing (view)

import Html exposing (Html, div, section, text)
import Html.Attributes exposing (attribute, class)
import Layout.FourColumn.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ section [ class Styles.section ]
            [ div [ class Styles.dark ]
                [ text "1" ]
            , div [ class Styles.light ]
                [ text "2" ]
            , div [ class Styles.dark ]
                [ text "3" ]
            , div [ class Styles.light ]
                [ text "4" ]
            ]
        ]
