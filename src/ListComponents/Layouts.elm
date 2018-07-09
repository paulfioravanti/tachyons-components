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
                ]
            ]
        ]
