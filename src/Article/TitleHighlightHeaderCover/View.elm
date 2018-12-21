module Article.TitleHighlightHeaderCover.View exposing (view)

import Article.TitleHighlightHeaderCover.Article as Article exposing (Article)
import Article.TitleHighlightHeaderCover.Styles as Styles
import Html
    exposing
        ( Html
        , article
        , div
        , h3
        , h4
        , h5
        , header
        , p
        , small
        , span
        , text
        , time
        )
import Html.Attributes exposing (attribute, class)


view : Html msg
view =
    let
        articleExample =
            Article.example
    in
    div [ attribute "data-name" "component" ]
        [ article []
            [ heading articleExample
            , content articleExample
            ]
        ]


heading : Article -> Html msg
heading { date, title, subtitle, author } =
    header [ class Styles.header ]
        [ div [ class Styles.headerContent ]
            [ time [ class Styles.date ]
                [ small []
                    [ text date ]
                ]
            , h3 [ class Styles.title ]
                [ span [ class Styles.titleText ]
                    [ text title ]
                ]
            , h4 [ class Styles.subtitle ]
                [ text subtitle ]
            , h5 [ class Styles.author ]
                [ text author ]
            ]
        ]


content : Article -> Html msg
content { lead1, lead2, quote, paragraph1, paragraph2 } =
    div [ class Styles.content ]
        [ p [ class Styles.lead ]
            [ text lead1 ]
        , p [ class Styles.lead ]
            [ text lead2 ]
        , p [ class Styles.quote ]
            [ text quote ]
        , p [ class Styles.paragraph1 ]
            [ text paragraph1 ]
        , p [ class Styles.paragraph2 ]
            [ text paragraph2 ]
        ]
