module List_.BorderSpaced.View exposing (view)

import Html exposing (Html, article, div, h1, li, text, ul)
import Html.Attributes exposing (attribute, class)
import List_.BorderSpaced.Styles as Styles


view : Html msg
view =
    let
        listItems =
            [ "Mackeral Tabby"
            , "Burmese"
            , "Orange Tabby"
            , "Maine Coon"
            , "Siamese"
            , "Scottish Fold"
            , "American Bobtail"
            ]
    in
        div [ attribute "data-name" "component" ]
            [ article [ class Styles.article ]
                [ h1 [ class Styles.heading ]
                    [ text "Cats" ]
                , ul [ class Styles.ul ]
                    (List.map listItem listItems)
                ]
            ]


listItem : String -> Html msg
listItem itemName =
    li [ class Styles.li ]
        [ text itemName ]
