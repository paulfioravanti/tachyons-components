module ListComponents.Avatars exposing (view)

import Avatar
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Avatars))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Avatars"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "avatars/circle-border/"
                    "Circle Border"
                    changeLocationMsg
                    (Avatars Avatar.circleBorderRoute)
                , Utils.component
                    "avatars/circle/"
                    "Circle"
                    changeLocationMsg
                    (Avatars Avatar.circleRoute)
                , Utils.component
                    "avatars/double-ring/"
                    "Double Ring"
                    changeLocationMsg
                    (Avatars Avatar.doubleRingRoute)
                , Utils.component
                    "avatars/rounded-large/"
                    "Rounded Large"
                    changeLocationMsg
                    (Avatars Avatar.roundedLargeRoute)
                , Utils.component
                    "avatars/rounded-medium/"
                    "Rounded Medium"
                    changeLocationMsg
                    (Avatars Avatar.roundedMediumRoute)
                , Utils.component
                    "avatars/rounded-small/"
                    "Rounded Small"
                    changeLocationMsg
                    (Avatars Avatar.roundedSmallRoute)
                , Utils.component
                    "avatars/square/"
                    "Square"
                    changeLocationMsg
                    (Avatars Avatar.squareRoute)
                ]
            ]
        ]
