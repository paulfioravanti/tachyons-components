module ListComponents.Articles exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Msg exposing (Msg)
import Route
    exposing
        ( Route
            ( ListComponents
            )
        )


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
                    ListComponents
                , Utils.component
                    "#"
                    "Full Bleed Background"
                    "articles/full-bleed-background"
                    ListComponents
                , Utils.component
                    "#"
                    "Headline Title Text"
                    "articles/headline-title-text"
                    ListComponents
                , Utils.component
                    "#"
                    "Large Title Text"
                    "articles/large-title-text"
                    ListComponents
                , Utils.component
                    "#"
                    "Left Title Top Border"
                    "articles/left-title-top-border"
                    ListComponents
                , Utils.component
                    "#"
                    "Left Title"
                    "articles/left-title"
                    ListComponents
                , Utils.component
                    "#"
                    "Photo Essay"
                    "articles/photo-essay"
                    ListComponents
                , Utils.component
                    "#"
                    "Single Column Large Title"
                    "articles/single-column-large-title"
                    ListComponents
                , Utils.component
                    "#"
                    "Title Highlight Header Cover"
                    "articles/title-highlight-header-cover"
                    ListComponents
                , Utils.component
                    "#"
                    "Title Text Image"
                    "articles/title-text-image"
                    ListComponents
                , Utils.component
                    "#"
                    "Title Text"
                    "articles/title-text"
                    ListComponents
                ]
            ]
        ]
