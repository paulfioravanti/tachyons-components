module ListComponents.Buttons exposing (view)

import Button
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Buttons"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "buttons/basic-previous-next/"
                    "Basic Previous Next"
                    (Route.Buttons Button.basicPreviousNextRoute)
                , Utils.component
                    "buttons/basic-rounded-extra-small/"
                    "Basic Rounded Extra Small"
                    (Route.Buttons Button.basicRoundedExtraSmallRoute)
                , Utils.component
                    "buttons/basic-rounded-small/"
                    "Basic Rounded Small"
                    (Route.Buttons Button.basicRoundedSmallRoute)
                , Utils.component
                    "buttons/basic-rounded/"
                    "Basic Rounded"
                    (Route.Buttons Button.basicRoundedRoute)
                , Utils.component
                    "buttons/basic/"
                    "Basic"
                    (Route.Buttons Button.basicRoute)
                , Utils.component
                    "buttons/centered-icons/"
                    "Centered Icons"
                    (Route.Buttons Button.centeredIconsRoute)
                , Utils.component
                    "buttons/pill-grow/"
                    "Pill Grow"
                    (Route.Buttons Button.pillGrowRoute)
                , Utils.component
                    "buttons/pill/"
                    "Pill"
                    (Route.Buttons Button.pillRoute)
                ]
            ]
        ]
