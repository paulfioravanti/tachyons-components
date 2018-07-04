module Article.FullBleedBackground.View exposing (view)

import Article.FullBleedBackground.Article as Article exposing (Article)
import Article.FullBleedBackground.Styles as Styles
import Html
    exposing
        ( Html
        , article
        , div
        , header
        , h3
        , h4
        , p
        , section
        , text
        )
import Html.Attributes exposing (attribute, class, style)


view : Html msg -> Html msg
view footer =
    let
        articleExample =
            Article.example

        backgroundImageStyle =
            [ ( "background"
              , "url("
                    ++ articleExample.backgroundImageUrl
                    ++ ") "
                    ++ "no-repeat center center fixed"
              )
            ]
    in
        div []
            [ article
                [ attribute "data-name" "article-full-bleed-background" ]
                [ div
                    [ class Styles.backgroundImage
                    , style backgroundImageStyle
                    ]
                    [ div [ class Styles.content ]
                        [ articleHeader articleExample
                        , articleContent articleExample
                        ]
                    ]
                ]
            , footer
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
