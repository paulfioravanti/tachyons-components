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
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/full-bleed-background/"
                    "Full Bleed Background"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/headline-title-text/"
                    "Headline Title Text"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/large-title-text/"
                    "Large Title Text"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/left-title-top-border/"
                    "Left Title Top Border"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/left-title/"
                    "Left Title"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/photo-essay/"
                    "Photo Essay"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/single-column-large-title/"
                    "Single Column Large Title"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/title-highlight-header-cover/"
                    "Title Highlight Header Cover"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/title-text-image/"
                    "Title Text Image"
                    (changeLocationMsg ListComponents)
                , Utils.component
                    "articles/title-text/"
                    "Title Text"
                    (changeLocationMsg ListComponents)
                ]
            ]
        ]
