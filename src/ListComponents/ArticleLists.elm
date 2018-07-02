module ListComponents.ArticleLists exposing (view)

import Html exposing (Html, a, div, p, text)
import Html.Attributes exposing (attribute, class, href, title)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Msg exposing (Msg)


view : Html Msg
view =
    div []
        [ Utils.sectionHeader "article-lists" "Article Lists"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "#"
                    "Title Preview Author Media Flipped"
                    "article-lists/title-preview-author-media-flipped"
                , Utils.component
                    "#"
                    "Title Preview Author Media"
                    "article-lists/title-preview-author-media"
                ]
            ]
        ]
