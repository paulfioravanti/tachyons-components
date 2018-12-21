module Banner.View exposing (view)

import Banner.Basic.View as Basic
import Banner.Info.View as Info
import Banner.Route as Route exposing (Route)
import Banner.SingleCta.View as SingleCta
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.Basic ->
            Basic.view

        Route.Info ->
            Info.view

        Route.SingleCta ->
            SingleCta.view
