module Article.SingleColumnLargeTitle.View exposing (view)

import Article.SingleColumnLargeTitle.Article as Article
    exposing
        ( Article
        , Photo
        )
import Article.SingleColumnLargeTitle.Styles as Styles
import Html exposing (Html, article, div, h1, img, header, p, span, text, time)
import Html.Attributes exposing (alt, class, src, style)


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
heading { title, date } =
    let
        image =
            Article.image009
    in
        header [ class Styles.header ]
            [ h1 [ class Styles.heading ]
                [ text title ]
            , time [ class Styles.date ]
                [ text date ]
            , img
                [ class Styles.headerImage
                , src image.url
                , alt image.caption
                ]
                []
            ]


content : Article -> Html msg
content article =
    div [ class Styles.content ]
        [ lead article
        , div [ class Styles.copy ]
            [ photo Article.image013
            , p [] [ text article.paragraph1 ]
            , photo Article.image012
            , p [] [ text article.paragraph2 ]
            , photo Article.image010
            , p [] [ text article.paragraph3 ]
            , photo Article.image011
            , p [] [ text article.paragraph4 ]
            ]
        ]


lead : Article -> Html msg
lead { lead } =
    p [ class Styles.lead ]
        [ text lead ]


photo : Photo -> Html msg
photo { url, caption } =
    img
        [ src url
        , class Styles.image
        , alt caption
        ]
        []
