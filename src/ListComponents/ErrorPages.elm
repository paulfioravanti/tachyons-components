module ListComponents.ErrorPages exposing (view)

import ErrorPage
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Error Pages"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "error-pages/404/"
                    "404"
                    (Route.ErrorPages ErrorPage.fourOhFourRoute)
                ]
            ]
        ]
