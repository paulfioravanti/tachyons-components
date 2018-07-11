module Article.SingleColumnLargeTitle.View exposing (view)

import Article.SingleColumnLargeTitle.Article as Article
    exposing
        ( Article
        , Photo
        )
import Article.SingleColumnLargeTitle.Styles as Styles
import Html exposing (Html, article, div, h1, img, header, p, text, time)
import Html.Attributes exposing (alt, attribute, class, src)


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
content { lead, paragraph1, paragraph2, paragraph3, paragraph4 } =
    div [ class Styles.content ]
        [ leadParagraph lead
        , div [ class Styles.copy ]
            [ photo Article.image013
            , p [] [ text paragraph1 ]
            , photo Article.image012
            , p [] [ text paragraph2 ]
            , photo Article.image010
            , p [] [ text paragraph3 ]
            , photo Article.image011
            , p [] [ text paragraph4 ]
            ]
        ]


leadParagraph : String -> Html msg
leadParagraph lead =
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
