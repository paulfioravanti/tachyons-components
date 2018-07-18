module List_.TitleText.View exposing (view)

import Html exposing (Html, b, div, li, span, ul, text)
import Html.Attributes exposing (attribute, class)
import List_.TitleText.Definition as Definition exposing (Definition)
import List_.TitleText.Styles as Styles


view : Html msg
view =
    let
        definitions =
            Definition.list
    in
        div [ attribute "data-name" "component" ]
            [ ul [ class Styles.ul ]
                (List.map definition definitions)
            ]


definition : Definition -> Html msg
definition { term, meaning } =
    li [ class Styles.li ]
        [ b [ class Styles.term ]
            [ text term ]
        , span [ class Styles.meaning ]
            [ text meaning ]
        ]
