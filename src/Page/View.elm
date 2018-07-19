module Page.View exposing (view)

import Html exposing (Html)
import Page.Double.View as Double
import Page.FourByFourMixedGrid.View as FourByFourMixedGrid
import Page.Route
    exposing
        ( Route
            ( Double
            , FourByFourMixedGrid
            )
        )


view : Route -> Html msg
view route =
    case route of
        Double ->
            Double.view

        FourByFourMixedGrid ->
            FourByFourMixedGrid.view
