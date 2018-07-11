module Article.LargeTitleText.View exposing (view)

import Article.LargeTitleText.Styles as Styles
import Html exposing (Html, article, div, h1, p, text)
import Html.Attributes exposing (attribute, class)
import LoremIpsum


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            (heading :: List.map paragraph paragraphs)
        ]


heading : Html msg
heading =
    h1 [ class Styles.heading ]
        [ text "Title" ]


paragraph : String -> Html msg
paragraph copy =
    p [ class Styles.copy ] [ text copy ]


paragraphs : List String
paragraphs =
    [ LoremIpsum.string, LoremIpsum.string ]
