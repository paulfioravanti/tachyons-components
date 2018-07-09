module Collection.View exposing (view)

import Collection.Route exposing (Route(Albums))
import Collection.Albums.View as Albums
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        Albums ->
            Albums.view footer
