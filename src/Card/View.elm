module Card.View exposing (view)

import Card.Route exposing (Route(AlbumCentered))
import Card.AlbumCentered.View as AlbumCentered
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        AlbumCentered ->
            AlbumCentered.view
