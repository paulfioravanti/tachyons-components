module Collection.Albums.View exposing (view)

import Collection.Albums.Album as Album exposing (Album)
import Collection.Albums.Styles as Styles
import Html exposing (Html, a, article, dd, div, dl, dt, h2, img, text)
import Html.Attributes exposing (alt, attribute, class, href, src)


view : Html msg
view =
    let
        albums =
            Album.list
    in
    div [ attribute "data-name" "component" ]
        [ article []
            [ h2 [ class Styles.header ]
                [ text "Albums" ]
            , div [ class Styles.albums ]
                (List.map album albums)
            ]
        ]


album : Album -> Html msg
album { iTunesLink, imageLink, imageAltText, title, artist } =
    div [ class Styles.album ]
        [ a [ class Styles.link, href iTunesLink ]
            [ img [ class Styles.image, src imageLink, alt imageAltText ] []
            , dl [ class Styles.descriptionList ]
                [ dt [ class Styles.term ]
                    [ text "Title" ]
                , dd [ class Styles.titleDescription ]
                    [ text title ]
                , dt [ class Styles.term ]
                    [ text "Artist" ]
                , dd [ class Styles.artistDescription ]
                    [ text artist ]
                ]
            ]
        ]
