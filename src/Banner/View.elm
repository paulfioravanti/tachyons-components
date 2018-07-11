module Banner.View exposing (view)

import Banner.Route exposing (Route(Basic, Info, SingleCta))
import Banner.Basic.View as Basic
import Banner.Info.View as Info
import Banner.SingleCta.View as SingleCta
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Basic ->
            Basic.view

        Info ->
            Info.view

        SingleCta ->
            SingleCta.view
