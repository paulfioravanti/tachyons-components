module Banner.View exposing (view)

import Banner.Route
    exposing
        ( Route
            ( Basic
            )
        )
import Banner.Basic.View as Basic
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        Basic ->
            Basic.view footer
