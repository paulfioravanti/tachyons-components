module Layout.FiveColumnCollapseAlternate.View exposing (view)

import Html exposing (Html, div, text)
import Html.Attributes exposing (attribute, class)
import Layout.FiveColumnCollapseAlternate.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.columns ]
            [ div [ class Styles.col1 ]
                [ text "1" ]
            , div [ class Styles.col2 ]
                [ text "2" ]
            , div [ class Styles.col3 ]
                [ text "3" ]
            , div [ class Styles.col4 ]
                [ text "4" ]
            , div [ class Styles.col5 ]
                [ text "5" ]
            ]
        ]
