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
                [ titlePreviewAuthorMediaFlipped
                ]
            ]
        ]


titlePreviewAuthorMediaFlipped : Html Msg
titlePreviewAuthorMediaFlipped =
    let
        screenshot =
            "/components/article-lists/"
                ++ "title-preview-author-media-flipped/screenshot.jpg"
    in
        a
            [ class Styles.sectionContentLink
            , href "#"
            , title "Title Preview Author Media Flipped"
            ]
            [ div [ class Styles.sectionContentLinkContent ]
                [ div
                    [ class Styles.sectionContentLinkImage
                    , attribute "data-bg" screenshot
                    ]
                    []
                ]
            , p [ class Styles.sectionContentTitle ]
                [ text "Title Preview Author Media Flipped" ]
            ]
