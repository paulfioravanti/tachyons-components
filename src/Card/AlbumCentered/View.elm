module Card.AlbumCentered.View exposing (view)

import Card.AlbumCentered.Styles as Styles
import Html exposing (Html, a, dd, div, dl, dt, img, text)
import Html.Attributes exposing (alt, attribute, class, href, src, title)


view : Html msg
view =
    let
        iTunesLink =
            "https://geo.itunes.apple.com/us/album/blonde/"
                ++ "id1146195596?at=1l3vqFJ&mt=1&app=music"

        albumCoverLink =
            "https://s3-us-west-1.amazonaws.com/tachyonsio/img/"
                ++ "Blonde-Frank_Ocean.jpeg"
    in
    div [ attribute "data-name" "component" ]
        [ a
            [ class Styles.link
            , title "Frank Ocean's Blonde on Apple Music"
            , href iTunesLink
            ]
            [ img
                [ class Styles.image
                , alt "Frank Ocean Blonde Album Cover"
                , src albumCoverLink
                ]
                []
            , dl [ class Styles.descriptionList ]
                [ dt [ class Styles.term ]
                    [ text "Title" ]
                , dd [ class Styles.titleDescription ]
                    [ text "Blonde" ]
                , dt [ class Styles.term ]
                    [ text "Artist" ]
                , dd [ class Styles.artistDescription ]
                    [ text "Frank Ocean" ]
                ]
            ]
        ]
