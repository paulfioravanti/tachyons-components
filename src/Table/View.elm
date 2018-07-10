module Table.View exposing (view)

import Table.Route exposing (Route(Basic))
import Table.Basic.View as Basic
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        Basic ->
            Basic.view footer
