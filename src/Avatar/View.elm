module Avatar.View exposing (view)

import Avatar.Circle.View as Circle
import Avatar.CircleBorder.View as CircleBorder
import Avatar.DoubleRing.View as DoubleRing
import Avatar.RoundedLarge.View as RoundedLarge
import Avatar.RoundedMedium.View as RoundedMedium
import Avatar.RoundedSmall.View as RoundedSmall
import Avatar.Route as Route exposing (Route)
import Avatar.Square.View as Square
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.Circle ->
            Circle.view

        Route.CircleBorder ->
            CircleBorder.view

        Route.DoubleRing ->
            DoubleRing.view

        Route.RoundedLarge ->
            RoundedLarge.view

        Route.RoundedMedium ->
            RoundedMedium.view

        Route.RoundedSmall ->
            RoundedSmall.view

        Route.Square ->
            Square.view
