module Table.View exposing (view)

import Html exposing (Html)
import Table.Basic.View as Basic
import Table.Route exposing (Route(Basic, StripedDark))
import Table.StripedDark.View as StripedDark


view : Route -> Html msg
view route =
    case route of
        Basic ->
            Basic.view

        StripedDark ->
            StripedDark.view
