module Quote.View exposing (view)

import Quote.Route exposing (Route(LeftBorder))
import Quote.LeftBorder.View as LeftBorder
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        LeftBorder ->
            LeftBorder.view
