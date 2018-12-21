module Article.FullBleedBackground.View exposing (view)

import Article.FullBleedBackground.Article as Article exposing (Article)
import Article.FullBleedBackground.Styles as Styles
import Html
    exposing
        ( Html
        , article
        , div
        , h3
        , h4
        , header
        , p
        , section
        , text
        )
import Html.Attributes exposing (attribute, class, style)


view : Html msg
view =
    let
        articleExample =
            Article.example

        backgroundImageStyle =
            style
                "background"
                ("url("
                    ++ articleExample.backgroundImageUrl
                    ++ ") "
                    ++ "no-repeat center center fixed"
                )
    in
    div [ attribute "data-name" "component" ]
        [ article
            [ attribute "data-name" "article-full-bleed-background" ]
            [ div [ class Styles.backgroundImage, backgroundImageStyle ]
                [ div [ class Styles.content ]
                    [ articleHeader articleExample
                    , articleContent articleExample
                    ]
                ]
            ]
        ]


articleHeader : Article -> Html msg
articleHeader { title, subtitle } =
    header [ class Styles.header ]
        [ h3 [ class Styles.title ]
            [ text title ]
        , h4 [ class Styles.subtitle ]
            [ text subtitle ]
        ]


articleContent : Article -> Html msg
articleContent { copy } =
    section [ class Styles.section ]
        [ p [ class Styles.copy ]
            [ text copy ]
        ]
