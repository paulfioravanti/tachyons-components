module Layout.TwoColumnCollapseOne.View exposing (view)

import Html exposing (Html, article, div, h1, text)
import Html.Attributes exposing (attribute, class)
import Layout.TwoColumnCollapseOne.Styles as Styles


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.columns ]
            [ div [ class Styles.col1 ]
                [ h1 [] [ text "Column One" ] ]
            , div [ class Styles.col2 ]
                [ h1 [] [ text "Column Two" ] ]
            ]
        ]
