module Avatar.View exposing (view)

import Avatar.Route
    exposing
        ( Route
            ( Circle
            , CircleBorder
            , DoubleRing
            , RoundedLarge
            , RoundedMedium
            , RoundedSmall
            , Square
            )
        )
import Avatar.Circle.View as Circle
import Avatar.CircleBorder.View as CircleBorder
import Avatar.DoubleRing.View as DoubleRing
import Avatar.RoundedLarge.View as RoundedLarge
import Avatar.RoundedMedium.View as RoundedMedium
import Avatar.RoundedSmall.View as RoundedSmall
import Avatar.Square.View as Square
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Circle ->
            Circle.view

        CircleBorder ->
            CircleBorder.view

        DoubleRing ->
            DoubleRing.view

        RoundedLarge ->
            RoundedLarge.view

        RoundedMedium ->
            RoundedMedium.view

        RoundedSmall ->
            RoundedSmall.view

        Square ->
            Square.view
