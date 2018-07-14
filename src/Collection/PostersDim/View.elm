module Collection.PostersDim.View exposing (view)

import Collection.PostersDim.Styles as Styles
import Collection.PostersDim.Movie as Movie exposing (Movie)
import Html exposing (Html, a, div, main_)
import Html.Attributes exposing (attribute, class, href, style)


view : Html msg
view =
    let
        movies =
            Movie.list
    in
        div [ attribute "data-name" "component" ]
            [ main_ [ class Styles.main_ ]
                (List.map movieLink movies)
            ]


movieLink : Movie -> Html msg
movieLink { imageUrl, iTunesUrl, label } =
    a [ class Styles.link, href iTunesUrl ]
        [ div [ class Styles.imageWrapper ]
            [ div
                [ class Styles.image
                , attribute "role" "img"
                , attribute "aria-label" label
                , style [ ( "backgroundImage", "url(" ++ imageUrl ++ ")" ) ]
                ]
                []
            ]
        ]
