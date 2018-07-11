module Form.CheckboxList.View exposing (view)

import Form.CheckboxList.Styles as Styles
import Html exposing (Html, div, fieldset, form, input, label, legend, text)
import Html.Attributes exposing (attribute, class, for, id, type_, value)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ form [ class Styles.form ]
            [ fieldset [ id "favorite_movies", class Styles.fieldset ]
                (heading :: List.map checkbox checkboxes)
            ]
        ]


heading : Html msg
heading =
    legend [ class Styles.legend ]
        [ text "Favorite Movies" ]


checkbox : ( String, String ) -> Html msg
checkbox ( checkboxId, name ) =
    div [ class Styles.checkboxWrapper ]
        [ input
            [ class Styles.checkbox
            , type_ "checkbox"
            , id checkboxId
            , value checkboxId
            ]
            []
        , label [ class Styles.label, for checkboxId ]
            [ text name ]
        ]


checkboxes : List ( String, String )
checkboxes =
    [ ( "spacejam", "Space Jam" )
    , ( "airbud", "Air Bud" )
    , ( "hocuspocus", "Hocus Pocus" )
    , ( "diehard", "Die Hard" )
    , ( "primer", "Primer" )
    , ( "proxy", "Hudsucker Proxy" )
    , ( "homealone", "Home Alone" )
    ]
