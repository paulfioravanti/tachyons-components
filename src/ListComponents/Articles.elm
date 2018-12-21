module ListComponents.Articles exposing (view)

import Article
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Articles"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "articles/feature/"
                    "Feature"
                    (Route.Articles Article.featureRoute)
                , Utils.component
                    "articles/full-bleed-background/"
                    "Full Bleed Background"
                    (Route.Articles Article.fullBleedBackgroundRoute)
                , Utils.component
                    "articles/headline-title-text/"
                    "Headline Title Text"
                    (Route.Articles Article.headlineTitleTextRoute)
                , Utils.component
                    "articles/large-title-text/"
                    "Large Title Text"
                    (Route.Articles Article.largeTitleTextRoute)
                , Utils.component
                    "articles/left-title-top-border/"
                    "Left Title Top Border"
                    (Route.Articles Article.leftTitleTopBorderRoute)
                , Utils.component
                    "articles/left-title/"
                    "Left Title"
                    (Route.Articles Article.leftTitleRoute)
                , Utils.component
                    "articles/photo-essay/"
                    "Photo Essay"
                    (Route.Articles Article.photoEssayRoute)
                , Utils.component
                    "articles/single-column-large-title/"
                    "Single Column Large Title"
                    (Route.Articles Article.singleColumnLargeTitleRoute)
                , Utils.component
                    "articles/title-highlight-header-cover/"
                    "Title Highlight Header Cover"
                    (Route.Articles Article.titleHighlightHeaderCoverRoute)
                , Utils.component
                    "articles/title-text-image/"
                    "Title Text Image"
                    (Route.Articles Article.titleTextImageRoute)
                , Utils.component
                    "articles/title-text/"
                    "Title Text"
                    (Route.Articles Article.titleTextRoute)
                ]
            ]
        ]
