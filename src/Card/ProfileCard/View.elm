module Card.ProfileCard.View exposing (view)

import Card.ProfileCard.Styles as Styles
import Html exposing (Html, a, article, div, h1, h2, hr, img, p, small, text, time)
import Html.Attributes exposing (alt, attribute, class, href, src)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ div [ class Styles.content ]
                [ image
                , h1 [ class Styles.heading ]
                    [ text "Mimi Whitehouse" ]
                , hr [ class Styles.hr ] []
                ]
            , description
            ]
        ]


image : Html msg
image =
    img
        [ src "http://tachyons.io/img/avatar_1.jpg"
        , class Styles.image
        , alt "Photo of a kitty staring at you"
        ]
        []


description : Html msg
description =
    let
        copy =
            """
            Quite affectionate and outgoing. She loves to get chin scratches
            and will roll around on the floor waiting for you give her more
            of them.
            """
    in
        p [ class Styles.description ]
            [ text copy ]
