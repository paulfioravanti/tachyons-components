module Article.TitleText.View exposing (view)

import Article.TitleText.Styles as Styles
import Html exposing (Html, article, div, h1, p, text)
import Html.Attributes exposing (class)
import LoremIpsum


view : Html msg -> Html msg
view footer =
    div []
        [ article [ class Styles.article ]
            (heading :: List.map paragraph paragraphs)
        , footer
        ]


heading : Html msg
heading =
    h1 []
        [ text "Title" ]


paragraph : String -> Html msg
paragraph copy =
    p [ class Styles.copy ] [ text copy ]


paragraphs : List String
paragraphs =
    [ LoremIpsum.string, LoremIpsum.string ]