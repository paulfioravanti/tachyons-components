module Card.View exposing (view)

import Card.Route
    exposing
        ( Route
            ( AlbumCentered
            , AlbumLeft
            , BasicTextCard
            , NewsCard
            )
        )
import Card.AlbumCentered.View as AlbumCentered
import Card.AlbumLeft.View as AlbumLeft
import Card.BasicTextCard.View as BasicTextCard
import Card.NewsCard.View as NewsCard
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

        NewsCard ->
            NewsCard.view
