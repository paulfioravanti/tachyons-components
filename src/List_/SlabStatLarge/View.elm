module List_.SlabStatLarge.View exposing (view)

import Html exposing (Html, a, article, div, dd, dl, h3, li, ul, text)
import Html.Attributes exposing (attribute, class, href)
import List_.SlabStatLarge.Styles as Styles
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
                , attribute "data-name" "slab-stat-large"
                ]
                [ h3 [ class Styles.heading ]
                    [ text "Today" ]
                , div [ class Styles.stats ]
                    (List.map stat stats)
                ]
            ]


stat : Stat -> Html msg
stat { name, value } =
    dl [ class Styles.dl ]
        [ dd [ class Styles.name ]
            [ text name ]
        , dd [ class Styles.value ]
            [ text value ]
        ]
