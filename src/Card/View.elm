module Card.View exposing (view)

import Card.Route
    exposing
        ( Route
            ( AlbumCentered
            , AlbumLeft
            , BasicTextCard
            )
        )
import Card.AlbumCentered.View as AlbumCentered
import Card.AlbumLeft.View as AlbumLeft
import Card.BasicTextCard.View as BasicTextCard
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        AlbumCentered ->
            AlbumCentered.view

        AlbumLeft ->
            AlbumLeft.view

        BasicTextCard ->
            BasicTextCard.view
