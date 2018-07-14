module Collection.Movies.View exposing (view)

import Collection.Movies.Styles as Styles
import Collection.Movies.Movie as Movie exposing (Movie)
import Html exposing (Html, a, article, div, dd, dl, dt, h2, img, text)
import Html.Attributes exposing (alt, attribute, class, href, src, style)


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
    a [ class Styles.link ]
        [ div
            [ class Styles.image
            , attribute "role" "img"
            , attribute "aria-label" label
            , style [ ( "backgroundImage", "url(" ++ imageUrl ++ ")" ) ]
            ]
            []
        ]
