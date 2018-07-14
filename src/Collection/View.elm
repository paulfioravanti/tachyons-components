module Collection.View exposing (view)

import Collection.Route
    exposing
        ( Route
            ( Albums
            , Movies
            , Posters
            , PostersDim
            )
        )
import Collection.Albums.View as Albums
import Collection.Movies.View as Movies
import Collection.Posters.View as Posters
import Collection.PostersDim.View as PostersDim
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Albums ->
            Albums.view

        Movies ->
            Movies.view

        Posters ->
            Posters.view

        PostersDim ->
            PostersDim.view
