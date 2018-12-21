module Card.View exposing (view)

import Card.AlbumCentered.View as AlbumCentered
import Card.AlbumLeft.View as AlbumLeft
import Card.BasicTextCard.View as BasicTextCard
import Card.NewsCard.View as NewsCard
import Card.ProductCard.View as ProductCard
import Card.ProfileCard.View as ProfileCard
import Card.ProfileCardTitleSubtitle.View as ProfileCardTitleSubtitle
import Card.Route as Route exposing (Route)
import Card.SuggestedProfile.View as SuggestedProfile
import Card.TextCard.View as TextCard
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.AlbumCentered ->
            AlbumCentered.view

        Route.AlbumLeft ->
            AlbumLeft.view

        Route.BasicTextCard ->
            BasicTextCard.view

        Route.NewsCard ->
            NewsCard.view

        Route.ProductCard ->
            ProductCard.view

        Route.ProfileCardTitleSubtitle ->
            ProfileCardTitleSubtitle.view

        Route.ProfileCard ->
            ProfileCard.view

        Route.SuggestedProfile ->
            SuggestedProfile.view

        Route.TextCard ->
            TextCard.view
