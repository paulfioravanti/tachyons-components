module Card.ProfileCardTitleSubtitle.View exposing (view)

import Card.ProfileCardTitleSubtitle.Styles as Styles
import Html exposing (Html, a, article, div, h1, h2, img, p, small, text, time)
import Html.Attributes exposing (alt, attribute, class, href, src)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ div [ class Styles.content ]
                [ image
                , h1 [ class Styles.heading ]
                    [ text "Mimi W." ]
                , h2 [ class Styles.subheading ]
                    [ text "CCO (Chief Cat Officer)" ]
                ]
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
