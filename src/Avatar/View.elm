module Avatar.View exposing (view)

import Avatar.Route
    exposing
        ( Route
            ( CircleBorder
            )
        )
import Avatar.CircleBorder.View as CircleBorder
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        CircleBorder ->
            CircleBorder.view footer
