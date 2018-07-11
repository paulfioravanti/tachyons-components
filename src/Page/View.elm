module Page.View exposing (view)

import Page.Route exposing (Route(FourByFourMixedGrid))
import Page.FourByFourMixedGrid.View as FourByFourMixedGrid
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        FourByFourMixedGrid ->
            FourByFourMixedGrid.view
