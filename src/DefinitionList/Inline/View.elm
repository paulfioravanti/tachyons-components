module DefinitionList.Inline.View exposing (view)

import DefinitionList.Inline.Styles as Styles
import Html exposing (Html, dd, div, dl, dt, h4, text)
import Html.Attributes exposing (attribute, class)


view : Html msg
view =
    let
        descriptionLists =
            [ ( "W", "Wins" )
            , ( "L", "Losses" )
            , ( "PCT", "Winning Percentages" )
            , ( "GB", "Games Back" )
            , ( "Home", "Home Record" )
            , ( "Road", "Road Record" )
            , ( "Div", "Division Record" )
            ]
    in
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.glossary ]
            (heading :: List.map descriptionList descriptionLists)
        ]


heading : Html msg
heading =
    h4 [ class Styles.heading ]
        [ text "Glossary" ]


descriptionList : ( String, String ) -> Html msg
descriptionList ( term, description ) =
    dl [ class Styles.descriptionList ]
        [ dt [ class Styles.term ]
            [ text (term ++ ":") ]
        , dd [ class Styles.description ]
            [ text description ]
        ]
