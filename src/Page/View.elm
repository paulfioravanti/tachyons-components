module Page.View exposing (view)

import Html exposing (Html)
import Page.Double.View as Double
import Page.FourByFourMixedGrid.View as FourByFourMixedGrid
import Page.PortfolioProject.View as PortfolioProject
import Page.Route as Route exposing (Route)
import Page.SwissCoverFiveColumns.View as SwissCoverFiveColumns


view : Route -> Html msg
view route =
    case route of
        Route.Double ->
            Double.view

        Route.FourByFourMixedGrid ->
            FourByFourMixedGrid.view

        Route.PortfolioProject ->
            PortfolioProject.view

        Route.SwissCoverFiveColumns ->
            SwissCoverFiveColumns.view
