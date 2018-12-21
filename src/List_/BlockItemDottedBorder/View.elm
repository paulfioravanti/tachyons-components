module List_.BlockItemDottedBorder.View exposing (view)

import Html exposing (Html, div, li, text, ul)
import Html.Attributes exposing (attribute, class)
import List_.BlockItemDottedBorder.Styles as Styles


view : Html msg
view =
    let
        listItems =
            [ "Orange", "Apple", "Peach", "Grape", "Grapefruit", "Kiwi" ]
    in
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.listWrapper ]
            [ ul [ class Styles.list ]
                (List.map listItem listItems)
            ]
        ]


listItem : String -> Html msg
listItem itemName =
    li [ class Styles.listItem ]
        [ text itemName ]
