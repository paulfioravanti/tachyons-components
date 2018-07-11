module ErrorPage.View exposing (view)

import ErrorPage.Route exposing (Route(FourOhFour))
import ErrorPage.FourOhFour.View as FourOhFour
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        FourOhFour ->
            FourOhFour.view
