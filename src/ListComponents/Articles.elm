module ListComponents.Articles exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Msg exposing (Msg)


view : Html Msg
view =
    div []
        [ Utils.sectionHeader "articles" "Articles"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "#"
                    "Feature"
                    "articles/feature"
                , Utils.component
                    "#"
                    "Full Bleed Background"
                    "articles/full-bleed-background"
                , Utils.component
                    "#"
                    "Headline Title Text"
                    "articles/headline-title-text"
                , Utils.component
                    "#"
                    "Large Title Text"
                    "articles/large-title-text"
                , Utils.component
                    "#"
                    "Left Title Top Border"
                    "articles/left-title-top-border"
                , Utils.component
                    "#"
                    "Left Title"
                    "articles/left-title"
                , Utils.component
                    "#"
                    "Photo Essay"
                    "articles/photo-essay"
                , Utils.component
                    "#"
                    "Single Column Large Title"
                    "articles/single-column-large-title"
                , Utils.component
                    "#"
                    "Title Highlight Header Cover"
                    "articles/title-highlight-header-cover"
                , Utils.component
                    "#"
                    "Title Text Image"
                    "articles/title-text-image"
                , Utils.component
                    "#"
                    "Title Text"
                    "articles/title-text"
                ]
            ]
        ]
