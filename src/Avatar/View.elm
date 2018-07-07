module Avatar.View exposing (view)

import Avatar.Route
    exposing
        ( Route
            ( Circle
            , CircleBorder
            , DoubleRing
            , RoundedLarge
            )
        )
import Avatar.Circle.View as Circle
import Avatar.CircleBorder.View as CircleBorder
import Avatar.DoubleRing.View as DoubleRing
import Avatar.RoundedLarge.View as RoundedLarge
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        Circle ->
            Circle.view footer

        CircleBorder ->
            CircleBorder.view footer

        DoubleRing ->
            DoubleRing.view footer

        RoundedLarge ->
            RoundedLarge.view footer
