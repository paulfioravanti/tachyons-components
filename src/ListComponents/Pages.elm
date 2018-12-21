module ListComponents.Pages exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Page
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Pages"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "pages/4x4-mixed-grid/"
                    "4x4 Mixed Grid"
                    (Route.Pages Page.fourByFourMixedGridRoute)
                , Utils.component
                    "pages/double/"
                    "Double"
                    (Route.Pages Page.doubleRoute)
                , Utils.component
                    "pages/portfolio-project/"
                    "Portfolio Project"
                    (Route.Pages Page.portfolioProjectRoute)
                , Utils.component
                    "pages/swiss-cover-five-columns/"
                    "Swiss Cover Five Columns"
                    (Route.Pages Page.swissCoverFiveColumnsRoute)
                ]
            ]
        ]
