module ListComponents.Articles exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route
    exposing
        ( Route
            ( ListComponents
            )
        )


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "articles" "Articles"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "articles/feature/"
                    "Feature"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/full-bleed-background/"
                    "Full Bleed Background"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/headline-title-text/"
                    "Headline Title Text"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/large-title-text/"
                    "Large Title Text"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/left-title-top-border/"
                    "Left Title Top Border"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/left-title/"
                    "Left Title"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/photo-essay/"
                    "Photo Essay"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/single-column-large-title/"
                    "Single Column Large Title"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/title-highlight-header-cover/"
                    "Title Highlight Header Cover"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/title-text-image/"
                    "Title Text Image"
                    ListComponents
                    changeLocationMsg
                , Utils.component
                    "articles/title-text/"
                    "Title Text"
                    ListComponents
                    changeLocationMsg
                ]
            ]
        ]
