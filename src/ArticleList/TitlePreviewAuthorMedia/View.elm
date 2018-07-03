module ArticleList.TitlePreviewAuthorMedia.View exposing (view)

import ArticleList.TitlePreviewAuthorMedia.Article as Article exposing (Article)
import ArticleList.TitlePreviewAuthorMedia.Styles as Styles
import Html
    exposing
        ( Html
        , a
        , article
        , div
        , h1
        , h2
        , img
        , p
        , section
        , text
        )
import Html.Attributes exposing (alt, class, href, src)


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
newsArticle { headline, copy, imageUrl, caption, author } =
    article [ class Styles.article ]
        [ a [ class Styles.articleLink, href "#0" ]
            [ div [ class Styles.flexFormatting ]
                [ photo imageUrl caption
                , content headline copy author
                ]
            ]
        ]


photo : String -> String -> Html msg
photo imageUrl caption =
    div [ class Styles.photo ]
        [ img [ class Styles.image, src imageUrl, alt caption ]
            []
        ]


content : String -> String -> String -> Html msg
content headline copy author =
    div [ class Styles.articleContent ]
        [ h1 [ class Styles.headline ]
            [ text headline ]
        , p [ class Styles.articleCopy ]
            [ text copy ]
        , byline author
        ]


byline : String -> Html msg
byline author =
    p [ class Styles.byline ]
        [ text ("By " ++ author) ]
