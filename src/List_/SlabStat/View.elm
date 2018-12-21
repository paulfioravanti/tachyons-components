module List_.SlabStat.View exposing (view)

import Html exposing (Html, article, dd, div, dl, h1, text)
import Html.Attributes exposing (attribute, class)
import List_.SlabStat.Styles as Styles
import List_.Stat as Stat exposing (Stat)


view : Html msg
view =
    let
        stats =
            Stat.list
    in
    div [ attribute "data-name" "component" ]
        [ article
            [ class Styles.article
            , attribute "data-name" "slab-stat"
            ]
            (heading :: List.map stat stats)
        ]


heading : Html msg
heading =
    h1 []
        [ text "Today" ]


stat : Stat -> Html msg
stat { name, value } =
    dl [ class Styles.dl ]
        [ dd [ class Styles.name ]
            [ text name ]
        , dd [ class Styles.value ]
            [ text value ]
        ]
