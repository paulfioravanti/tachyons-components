module ListComponents.Marketing exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Marketing
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Marketing"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "marketing/iphone-app/"
                    "Iphone App"
                    (Route.Marketing Marketing.iphoneAppRoute)
                ]
            ]
        ]
