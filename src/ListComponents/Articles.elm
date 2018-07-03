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
                    "articles/feature/"
                    "Feature"
                    ListComponents
                , Utils.component
                    "articles/full-bleed-background/"
                    "Full Bleed Background"
                    ListComponents
                , Utils.component
                    "articles/headline-title-text/"
                    "Headline Title Text"
                    ListComponents
                , Utils.component
                    "articles/large-title-text/"
                    "Large Title Text"
                    ListComponents
                , Utils.component
                    "articles/left-title-top-border/"
                    "Left Title Top Border"
                    ListComponents
                , Utils.component
                    "articles/left-title/"
                    "Left Title"
                    ListComponents
                , Utils.component
                    "articles/photo-essay/"
                    "Photo Essay"
                    ListComponents
                , Utils.component
                    "articles/single-column-large-title/"
                    "Single Column Large Title"
                    ListComponents
                , Utils.component
                    "articles/title-highlight-header-cover/"
                    "Title Highlight Header Cover"
                    ListComponents
                , Utils.component
                    "articles/title-text-image/"
                    "Title Text Image"
                    ListComponents
                , Utils.component
                    "articles/title-text/"
                    "Title Text"
                    ListComponents
                ]
            ]
        ]
