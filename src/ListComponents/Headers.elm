module ListComponents.Headers exposing (view)

import Header
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Headers"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "headers/circle-avatar-title-subtitle/"
                    "Circle Avatar Title Subtitle"
                    (Route.Headers Header.circleAvatarTitleSubtitleRoute)
                , Utils.component
                    "headers/rounded-avatar-title-subtitle/"
                    "Rounded Avatar Title Subtitle"
                    (Route.Headers Header.roundedAvatarTitleSubtitleRoute)
                , Utils.component
                    "headers/startup-hero/"
                    "Startup Hero"
                    (Route.Headers Header.startupHeroRoute)
                ]
            ]
        ]
