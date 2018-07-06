module ListComponents.ArticleLists exposing (view)

import ArticleList
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(ArticleLists))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Article Lists"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "article-lists/title-preview-author-media-flipped/"
                    "Title Preview Author Media Flipped"
                    changeLocationMsg
                    (ArticleLists
                        ArticleList.titlePreviewAuthorMediaFlippedRoute
                    )
                , Utils.component
                    "article-lists/title-preview-author-media/"
                    "Title Preview Author Media"
                    changeLocationMsg
                    (ArticleLists
                        ArticleList.titlePreviewAuthorMediaRoute
                    )
                ]
            ]
        ]
