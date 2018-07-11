module Collection.View exposing (view)

import Collection.Route exposing (Route(Albums))
import Collection.Albums.View as Albums
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Albums ->
            Albums.view
