module ListComponents.Avatars exposing (view)

import Avatar
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Avatars"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "avatars/circle-border/"
                    "Circle Border"
                    (Route.Avatars Avatar.circleBorderRoute)
                , Utils.component
                    "avatars/circle/"
                    "Circle"
                    (Route.Avatars Avatar.circleRoute)
                , Utils.component
                    "avatars/double-ring/"
                    "Double Ring"
                    (Route.Avatars Avatar.doubleRingRoute)
                , Utils.component
                    "avatars/rounded-large/"
                    "Rounded Large"
                    (Route.Avatars Avatar.roundedLargeRoute)
                , Utils.component
                    "avatars/rounded-medium/"
                    "Rounded Medium"
                    (Route.Avatars Avatar.roundedMediumRoute)
                , Utils.component
                    "avatars/rounded-small/"
                    "Rounded Small"
                    (Route.Avatars Avatar.roundedSmallRoute)
                , Utils.component
                    "avatars/square/"
                    "Square"
                    (Route.Avatars Avatar.squareRoute)
                ]
            ]
        ]
