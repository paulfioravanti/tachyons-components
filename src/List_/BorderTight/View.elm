module List_.BorderTight.View exposing (view)

import Html exposing (Html, div, h1, li, text, ul)
import Html.Attributes exposing (attribute, class)
import List_.BorderTight.Styles as Styles


view : Html msg
view =
    let
        listItems =
            [ "Mackeral Tabby"
            , "Burmese"
            , "Maine Coon"
            , "Orange Tabby"
            , "Siamese"
            , "Scottish Fold"
            ]

        lastChild =
            listItem Styles.lastChild "American Bobtail" []
    in
    div [ attribute "data-name" "component" ]
        [ h1 [ class Styles.heading ]
            [ text "Cats" ]
        , ul [ class Styles.ul ]
            (List.foldr (listItem Styles.li) lastChild listItems)
        ]


listItem : String -> String -> List (Html msg) -> List (Html msg)
listItem styles itemName acc =
    let
        element =
            li [ class styles ]
                [ text itemName ]
    in
    element :: acc
