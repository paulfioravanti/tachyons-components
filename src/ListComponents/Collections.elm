module ListComponents.Collections exposing (view)

import Collection
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Collections"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "collections/albums/"
                    "Albums"
                    (Route.Collections Collection.albumsRoute)
                , Utils.component
                    "collections/movies/"
                    "Movies"
                    (Route.Collections Collection.moviesRoute)
                , Utils.component
                    "collections/posters-dim/"
                    "Posters Dim"
                    (Route.Collections Collection.postersDimRoute)
                , Utils.component
                    "collections/posters/"
                    "Posters"
                    (Route.Collections Collection.postersRoute)
                , Utils.component
                    "collections/square-title-subtitle/"
                    "Square Title Subtitle"
                    (Route.Collections Collection.squareTitleSubtitleRoute)
                , Utils.component
                    "collections/vinyl/"
                    "Vinyl"
                    (Route.Collections Collection.vinylRoute)
                ]
            ]
        ]
