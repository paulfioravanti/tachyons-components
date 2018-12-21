module Collection.Movies.View exposing (view)

import Collection.Movies.Movie as Movie exposing (Movie)
import Collection.Movies.Styles as Styles
import Html exposing (Html, a, article, div)
import Html.Attributes exposing (attribute, class, href, style)


view : Html msg
view =
    let
        movies =
            Movie.list
    in
    div [ attribute "data-name" "component" ]
        [ article []
            (List.map movieLink movies)
        ]


movieLink : Movie -> Html msg
movieLink { imageUrl, iTunesUrl, label } =
    a [ class Styles.link, href iTunesUrl ]
        [ div
            [ class Styles.image
            , attribute "role" "img"
            , attribute "aria-label" label
            , style "backgroundImage" ("url(" ++ imageUrl ++ ")")
            ]
            []
        ]
