module Page.View exposing (view)

import Html exposing (Html)
import Page.Double.View as Double
import Page.FourByFourMixedGrid.View as FourByFourMixedGrid
import Page.PortfolioProject.View as PortfolioProject
import Page.Route
    exposing
        ( Route
            ( Double
            , FourByFourMixedGrid
            , PortfolioProject
            , SwissCoverFiveColumns
            )
        )
import Page.SwissCoverFiveColumns.View as SwissCoverFiveColumns


view : Route -> Html msg
view route =
    case route of
        Double ->
            Double.view

        FourByFourMixedGrid ->
            FourByFourMixedGrid.view

        PortfolioProject ->
            PortfolioProject.view

        SwissCoverFiveColumns ->
            SwissCoverFiveColumns.view
