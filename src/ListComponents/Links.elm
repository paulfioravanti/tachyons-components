module ListComponents.Links exposing (view)

import Link
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Links))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Links"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "links/animate-background-color/"
                    "Animate Background Color"
                    changeLocationMsg
                    (Links Link.animateBackgroundColorRoute)
                ]
            ]
        ]
