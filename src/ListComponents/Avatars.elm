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
                ]
            ]
        ]