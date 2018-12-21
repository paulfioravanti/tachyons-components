module ErrorPage.View exposing (view)

import ErrorPage.FourOhFour.View as FourOhFour
import ErrorPage.Route as Route exposing (Route)
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.FourOhFour ->
            FourOhFour.view
