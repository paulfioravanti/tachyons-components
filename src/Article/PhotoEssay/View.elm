module Article.PhotoEssay.View exposing (view)

import Article.PhotoEssay.Article as Article exposing (Article)
import Article.PhotoEssay.Styles as Styles
import Html exposing (Html, article, div, h1, img, header, p, span, text)
import Html.Attributes exposing (alt, attribute, class, src, style)


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
heading { backgroundImageUrl, title, author } =
    let
        backgroundImageStyle =
            [ ( "background"
              , "url(" ++ backgroundImageUrl ++ ") no-repeat center right"
              )
            ]
    in
        header [ class Styles.header ]
            [ div [ class Styles.backgroundImage, style backgroundImageStyle ]
                [ h1 [ class Styles.heading ]
                    [ text title ]
                , span [ class Styles.author ]
                    [ text author ]
                ]
            ]


content : Article -> Html msg
content essayArticle =
    div [ class Styles.content ]
        [ p [ class Styles.lead ]
            [ text essayArticle.lead ]
        , div [ class Styles.copy ]
            [ mainContent essayArticle
            , div [ class Styles.clearfix ]
                [ image010
                , image011
                , image012
                , image013
                ]
            ]
        ]


mainContent : Article -> Html msg
mainContent { copyLead, copy } =
    let
        image =
            Article.image009
    in
        div [ class Styles.mainContent ]
            [ div [ class Styles.mainImage ]
                [ img [ src image.url, class Styles.image ] [] ]
            , div [ class Styles.mainCopy ]
                [ p [ class Styles.copyText ]
                    [ span [ class Styles.copyLead ]
                        [ text copyLead ]
                    , text copy
                    ]
                ]
            ]


image010 : Html msg
image010 =
    let
        image =
            Article.image010
    in
        div [ class Styles.image010 ]
            [ img
                [ src image.url
                , class Styles.image
                , alt image.caption
                ]
                []
            ]


image011 : Html msg
image011 =
    let
        image =
            Article.image011
    in
        div [ class Styles.image011 ]
            [ img
                [ src image.url
                , class Styles.image
                , alt image.caption
                ]
                []
            ]


image012 : Html msg
image012 =
    let
        image =
            Article.image012
    in
        div [ class Styles.image012 ]
            [ img
                [ src image.url
                , class Styles.image
                , alt image.caption
                ]
                []
            ]


image013 : Html msg
image013 =
    let
        image =
            Article.image013
    in
        div [ class Styles.image013 ]
            [ img
                [ src image.url
                , class Styles.image
                , alt image.caption
                ]
                []
            ]
