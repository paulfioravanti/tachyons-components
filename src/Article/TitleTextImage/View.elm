module Article.TitleTextImage.View exposing (view)

import Article.TitleTextImage.Styles as Styles
import Html exposing (Html, article, div, h1, img, p, text)
import Html.Attributes exposing (alt, attribute, class, src)
import LoremIpsum


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            (heading :: image :: List.map paragraph paragraphs)
        ]


heading : Html msg
heading =
    h1 [ class Styles.heading ]
        [ text "Title Text with Image" ]


image : Html msg
image =
    img
        [ class Styles.image
        , src "http://tachyons.io/img/space.jpg"
        , alt "Photo of outer space"
        ]
        []


paragraph : String -> Html msg
paragraph copy =
    p [ class Styles.copy ] [ text copy ]


paragraphs : List String
paragraphs =
    [ LoremIpsum.string, LoremIpsum.string ]
