module ListComponents.Headers exposing (view)

import Header
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Headers))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Headers"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "headers/circle-avatar-title-subtitle/"
                    "Circle Avatar Title Subtitle"
                    changeLocationMsg
                    (Headers Header.circleAvatarTitleSubtitleRoute)
                ]
            ]
        ]
