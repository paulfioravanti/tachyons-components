module ArticleList.TitlePreviewAuthorMediaFlipped.View exposing (view)

import ArticleList.TitlePreviewAuthorMediaFlipped.Article as Article exposing (Article)
import ArticleList.TitlePreviewAuthorMediaFlipped.Styles as Styles
import Html
    exposing
        ( Html
        , article
        , div
        , h1
        , h2
        , img
        , p
        , section
        , span
        , text
        , time
        )
import Html.Attributes exposing (alt, class, src)


view : Html msg -> Html msg
view footer =
    div []
        [ section [ class Styles.section ]
            (pageHeading :: List.map newsArticle Article.list)
        , footer
        ]


pageHeading : Html msg
pageHeading =
    h2 [ class Styles.title ]
        [ text "News" ]


newsArticle : Article -> Html msg
newsArticle { headline, copy, imageUrl, caption, author, timestamp } =
    article [ class Styles.article ]
        [ div [ class Styles.flexFormatting ]
            [ content headline copy
            , photo imageUrl caption
            ]
        , byline author
        , time [ class Styles.timestamp ]
            [ text timestamp ]
        ]


content : String -> String -> Html msg
content headline copy =
    div [ class Styles.articleContent ]
        [ h1 [ class Styles.headline ]
            [ text headline ]
        , p [ class Styles.articleCopy ]
            [ text copy ]
        ]


photo : String -> String -> Html msg
photo imageUrl caption =
    div [ class Styles.photo ]
        [ img [ class Styles.image, src imageUrl, alt caption ]
            []
        ]


byline : String -> Html msg
byline author =
    p [ class Styles.byline ]
        [ text "By "
        , span [ class Styles.author ]
            [ text author ]
        ]
