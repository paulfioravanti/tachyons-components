module Card.View exposing (view)

import Card.Route
    exposing
        ( Route
            ( AlbumCentered
            , AlbumLeft
            , BasicTextCard
            , NewsCard
            , ProductCard
            , ProfileCard
            , ProfileCardTitleSubtitle
            , SuggestedProfile
            )
        )
import Card.AlbumCentered.View as AlbumCentered
import Card.AlbumLeft.View as AlbumLeft
import Card.BasicTextCard.View as BasicTextCard
import Card.NewsCard.View as NewsCard
import Card.ProductCard.View as ProductCard
import Card.ProfileCard.View as ProfileCard
import Card.ProfileCardTitleSubtitle.View as ProfileCardTitleSubtitle
import Card.SuggestedProfile.View as SuggestedProfile
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

        ProfileCard ->
            ProfileCard.view

        SuggestedProfile ->
            SuggestedProfile.view
