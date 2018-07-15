module DefinitionList.Simple.View exposing (view)

import DefinitionList.Simple.Styles as Styles
import Html exposing (Html, div, dd, dl, dt, h4, text)
import Html.Attributes exposing (attribute, class)


view : Html msg
view =
    let
        definitions =
            [ ( "Favorite Song", "Devil Got My Woman - Skip James" )
            , ( "Favorite Movie", "Primer" )
            , ( "Favorite Artist", "Kanye West" )
            , ( "Favorite Food", "Cheese Pizza" )
            , ( "Least Favorite Flavor", "Cherry" )
            , ( "Favorite Hobby", "Eating Cheese Pizza" )
            ]
    in
        div [ attribute "data-name" "component" ]
            [ dl [ class Styles.descriptionList ]
                (List.foldr definition [] definitions)
            ]


definition : ( String, String ) -> List (Html msg) -> List (Html msg)
definition ( term, description ) acc =
    let
        definitionTerm =
            dt [ class Styles.term ]
                [ text term ]

        definitionDescription =
            dd [ class Styles.description ]
                [ text description ]
    in
        acc
            |> (::) definitionDescription
            |> (::) definitionTerm
