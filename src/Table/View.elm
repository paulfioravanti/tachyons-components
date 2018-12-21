module Table.View exposing (view)

import Html exposing (Html)
import Table.Basic.View as Basic
import Table.Route as Route exposing (Route)
import Table.StripedDark.View as StripedDark


view : Route -> Html msg
view route =
    case route of
        Route.Basic ->
            Basic.view

        Route.StripedDark ->
            StripedDark.view
