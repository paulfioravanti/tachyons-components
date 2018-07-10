module ListComponents.Marketing exposing (view)

import Marketing
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Marketing))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Marketing"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "marketing/iphone-app/"
                    "Iphone App"
                    changeLocationMsg
                    (Marketing Marketing.iphoneAppRoute)
                ]
            ]
        ]
