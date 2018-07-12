module ListComponents.Buttons exposing (view)

import Button
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Buttons))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Buttons"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "buttons/basic-previous-next/"
                    "Basic Previous Next"
                    changeLocationMsg
                    (Buttons Button.basicPreviousNextRoute)
                , Utils.component
                    "buttons/basic-rounded-extra-small/"
                    "Basic Rounded Extra Small"
                    changeLocationMsg
                    (Buttons Button.basicRoundedExtraSmallRoute)
                ]
            ]
        ]
