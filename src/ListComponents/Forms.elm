module ListComponents.Forms exposing (view)

import Form
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Forms))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Forms"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "forms/checkbox-list/"
                    "Checkbox List"
                    changeLocationMsg
                    (Forms Form.checkboxListRoute)
                ]
            ]
        ]
