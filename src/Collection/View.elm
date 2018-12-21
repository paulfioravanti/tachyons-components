module Collection.View exposing (view)

import Collection.Albums.View as Albums
import Collection.Movies.View as Movies
import Collection.Posters.View as Posters
import Collection.PostersDim.View as PostersDim
import Collection.Route as Route exposing (Route)
import Collection.SquareTitleSubtitle.View as SquareTitleSubtitle
import Collection.Vinyl.View as Vinyl
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.Albums ->
            Albums.view

        Route.Movies ->
            Movies.view

        Route.Posters ->
            Posters.view

        Route.PostersDim ->
            PostersDim.view

        Route.SquareTitleSubtitle ->
            SquareTitleSubtitle.view

        Route.Vinyl ->
            Vinyl.view
