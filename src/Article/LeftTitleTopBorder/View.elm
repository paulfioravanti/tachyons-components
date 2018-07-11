module Article.LeftTitleTopBorder.View exposing (view)

import Article.LeftTitleTopBorder.Article as Article exposing (Article)
import Article.LeftTitleTopBorder.Styles as Styles
import Html exposing (Html, article, div, h1, h2, header, p, text, time)
import Html.Attributes exposing (attribute, class)


view : Html msg
view =
    let
        articleExample =
            Article.example
    in
        div [ attribute "data-name" "component" ]
            [ article [ class Styles.article ]
                [ heading articleExample
                , content articleExample
                ]
            ]


heading : Article -> Html msg
heading { heading, subHeading, date } =
    header [ class Styles.header ]
        [ h1 [ class Styles.heading ]
            [ text heading ]
        , h2 [ class Styles.subHeading ]
            [ text subHeading ]
        , time [ class Styles.date ]
            [ text date ]
        ]


content : Article -> Html msg
content { paragraph1, paragraph2 } =
    div [ class Styles.content ]
        [ p [ class Styles.paragraph1 ]
            [ text paragraph1 ]
        , p [ class Styles.paragraph2 ]
            [ text paragraph2 ]
        ]
