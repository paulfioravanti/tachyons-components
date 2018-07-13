module Card.BasicTextCard.View exposing (view)

import Card.BasicTextCard.Styles as Styles
import Html exposing (Html, article, div, h1, p, text)
import Html.Attributes exposing (attribute, class)
import LoremIpsum


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ h1 [ class Styles.heading ]
                [ text "Title of card" ]
            , div [ class Styles.content ]
                [ p [ class Styles.copy ]
                    [ text LoremIpsum.shortString ]
                ]
            ]
        ]
