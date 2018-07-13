module Card.ProductCard.View exposing (view)

import Card.ProductCard.Styles as Styles
import Html exposing (Html, a, article, div, h1, h2, img, p, small, text, time)
import Html.Attributes exposing (alt, attribute, class, href, src)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ image
            , div [ class Styles.content ]
                [ header
                , description
                ]
            ]
        ]


image : Html msg
image =
    img
        [ src "http://placekitten.com/g/600/300"
        , class Styles.image
        , alt "Photo of a kitten looking menacing."
        ]
        []


header : Html msg
header =
    div [ class Styles.header ]
        [ div [ class Styles.headingWrapper ]
            [ h1 [ class Styles.heading ]
                [ text "Cat" ]
            ]
        , div [ class Styles.priceWrapper ]
            [ h2 [ class Styles.price ]
                [ text "$1,000" ]
            ]
        ]


description : Html msg
description =
    let
        paragraph =
            """
            If it fits, i sits burrow under covers. Destroy couch leave hair
            everywhere, and touch water with paw then recoil in horror.
            """
    in
        p [ class Styles.description ]
            [ text paragraph ]
