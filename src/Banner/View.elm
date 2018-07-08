module Banner.View exposing (view)

import Banner.Route exposing (Route(Basic, Info, SingleCta))
import Banner.Basic.View as Basic
import Banner.Info.View as Info
import Banner.SingleCta.View as SingleCta
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        Basic ->
            Basic.view footer

        Info ->
            Info.view footer

        SingleCta ->
            SingleCta.view footer
