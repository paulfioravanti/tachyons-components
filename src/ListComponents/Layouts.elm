module ListComponents.Layouts exposing (view)

import Layout
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Layouts))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Layout"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "layout/aspect-ratio-16x9/"
                    "Aspect Ratio 16x9"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio16x9Route)
                , Utils.component
                    "layout/aspect-ratio-1x1/"
                    "Aspect Ratio 1x1"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio1x1Route)
                , Utils.component
                    "layout/aspect-ratio-3x4/"
                    "Aspect Ratio 3x4"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio3x4Route)
                , Utils.component
                    "layout/aspect-ratio-4x3/"
                    "Aspect Ratio 4x3"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio4x3Route)
                , Utils.component
                    "layout/aspect-ratio-4x6/"
                    "Aspect Ratio 4x6"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio4x6Route)
                , Utils.component
                    "layout/aspect-ratio-5x7/"
                    "Aspect Ratio 5x7"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio5x7Route)
                , Utils.component
                    "layout/aspect-ratio-5x8/"
                    "Aspect Ratio 5x8"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio5x8Route)
                , Utils.component
                    "layout/aspect-ratio-6x4/"
                    "Aspect Ratio 6x4"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio6x4Route)
                ]
            ]
        ]
