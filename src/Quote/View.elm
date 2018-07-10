module Quote.View exposing (view)

import Quote.Route exposing (Route(LeftBorder))
import Quote.LeftBorder.View as LeftBorder
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        LeftBorder ->
            LeftBorder.view footer
