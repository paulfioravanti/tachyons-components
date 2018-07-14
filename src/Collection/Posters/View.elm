module Collection.Posters.View exposing (view)

import Collection.Posters.Styles as Styles
import Collection.Posters.Poster as Poster
import Html exposing (Html, a, div, main_, img)
import Html.Attributes exposing (attribute, class, href, src)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ main_ [ class Styles.main_ ]
            [ posters Styles.firstCollection Poster.firstList
            , posters Styles.collection Poster.secondList
            , posters Styles.collection Poster.thirdList
            ]
        ]


posters : String -> List String -> Html msg
posters styles urls =
    div [ class styles ]
        (List.map poster urls)


poster : String -> Html msg
poster url =
    a [ class Styles.link, href "#" ]
        [ img [ class Styles.image, src url ] [] ]
