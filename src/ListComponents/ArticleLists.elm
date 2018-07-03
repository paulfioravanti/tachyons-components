module ListComponents.ArticleLists exposing (view)

import ArticleLists.Route exposing (Route(TitlePreviewAuthorMediaFlipped))
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Msg exposing (Msg)
import Route
    exposing
        ( Route
            ( ArticleLists
            , ListComponents
            )
        )


view : Html Msg
view =
    div []
        [ Utils.sectionHeader "article-lists" "Article Lists"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "article-lists/title-preview-author-media-flipped/"
                    "Title Preview Author Media Flipped"
                    (ArticleLists TitlePreviewAuthorMediaFlipped)
                , Utils.component
                    "article-lists/title-preview-author-media/"
                    "Title Preview Author Media"
                    ListComponents
                ]
            ]
        ]
