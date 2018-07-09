module Card.View exposing (view)

import Card.Route exposing (Route(AlbumCentered))
import Card.AlbumCentered.View as AlbumCentered
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        AlbumCentered ->
            AlbumCentered.view footer
