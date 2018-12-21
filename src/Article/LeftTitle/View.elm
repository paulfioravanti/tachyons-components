module Article.LeftTitle.View exposing (view)

import Article.LeftTitle.Article as Article exposing (Article)
import Article.LeftTitle.Styles as Styles
import Html exposing (Html, article, div, h1, header, p, span, text)
import Html.Attributes exposing (attribute, class)


view : Html msg
view =
    let
        articleExample =
            Article.example
    in
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ articleHeading articleExample
            , content articleExample
            ]
        ]


articleHeading : Article -> Html msg
articleHeading { heading, author } =
    header [ class Styles.header ]
        [ h1 [ class Styles.heading ]
            [ text heading ]
        , span [ class Styles.author ]
            [ text author ]
        ]


content : Article -> Html msg
content { paragraph1, paragraph2 } =
    div [ class Styles.content ]
        [ p [ class Styles.paragraph1 ]
            [ text paragraph1 ]
        , p [ class Styles.paragraph2 ]
            [ text paragraph2 ]
        ]
