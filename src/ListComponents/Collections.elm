module ListComponents.Collections exposing (view)

import Collection
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Collections))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Collections"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "collections/albums/"
                    "Albums"
                    changeLocationMsg
                    (Collections Collection.albumsRoute)
                , Utils.component
                    "collections/movies/"
                    "Movies"
                    changeLocationMsg
                    (Collections Collection.moviesRoute)
                , Utils.component
                    "collections/posters-dim/"
                    "Posters Dim"
                    changeLocationMsg
                    (Collections Collection.postersDimRoute)
                , Utils.component
                    "collections/posters/"
                    "Posters"
                    changeLocationMsg
                    (Collections Collection.postersRoute)
                ]
            ]
        ]
