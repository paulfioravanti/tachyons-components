module ListComponents.Pages exposing (view)

import Page
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Pages))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Pages"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "pages/4x4-mixed-grid/"
                    "4x4 Mixed Grid"
                    changeLocationMsg
                    (Pages Page.fourByFourMixedGridRoute)
                , Utils.component
                    "pages/double/"
                    "Double"
                    changeLocationMsg
                    (Pages Page.doubleRoute)
                , Utils.component
                    "pages/portfolio-project/"
                    "Portfolio Project"
                    changeLocationMsg
                    (Pages Page.portfolioProjectRoute)
                ]
            ]
        ]
