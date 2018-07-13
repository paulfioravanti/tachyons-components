module Card.View exposing (view)

import Card.Route
    exposing
        ( Route
            ( AlbumCentered
            , AlbumLeft
            , BasicTextCard
            , NewsCard
            , ProductCard
            , ProfileCardTitleSubtitle
            )
        )
import Card.AlbumCentered.View as AlbumCentered
import Card.AlbumLeft.View as AlbumLeft
import Card.BasicTextCard.View as BasicTextCard
import Card.NewsCard.View as NewsCard
import Card.ProductCard.View as ProductCard
import Card.ProfileCardTitleSubtitle.View as ProfileCardTitleSubtitle
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

        ProductCard ->
            ProductCard.view

        ProfileCardTitleSubtitle ->
            ProfileCardTitleSubtitle.view
