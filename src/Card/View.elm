module Card.View exposing (view)

import Card.Route
    exposing
        ( Route
            ( AlbumCentered
            , AlbumLeft
            )
        )
import Card.AlbumCentered.View as AlbumCentered
import Card.AlbumLeft.View as AlbumLeft
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        AlbumCentered ->
            AlbumCentered.view

        AlbumLeft ->
            AlbumLeft.view
