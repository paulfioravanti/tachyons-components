module Article.LeftTitle.View exposing (view)

import Article.LeftTitle.Article as Article exposing (Article)
import Article.LeftTitle.Styles as Styles
import Html exposing (Html, article, div, h1, h2, header, p, span, text, time)
import Html.Attributes exposing (class)


view : Html msg -> Html msg
view footer =
    let
        articleExample =
            Article.example
    in
        div []
            [ article [ class Styles.article ]
                [ heading articleExample
                , content articleExample
                ]
            , footer
            ]


heading : Article -> Html msg
heading { heading, author } =
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
