module Card.NewsCard.View exposing (view)

import Card.NewsCard.Styles as Styles
import Html exposing (Html, a, article, div, h1, img, small, text, time)
import Html.Attributes exposing (alt, attribute, class, href, src)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ heading
            , image
            , headline
            ]
        ]


heading : Html msg
heading =
    div [ class Styles.headingWrapper ]
        [ h1 [ class Styles.heading ]
            [ text "Daily News Co." ]
        ]


image : Html msg
image =
    img
        [ src "http://tachyons.io/img/cat-720.jpg"
        , alt "Closeup photo of a tabby cat yawning."
        , class Styles.image
        ]
        []


headline : Html msg
headline =
    div [ class Styles.headlineWrapper ]
        [ a [ href "#", class Styles.headline ]
            [ text "15 things every cat owner should know" ]
        , small [ class Styles.byline ]
            [ text "AMP - "
            , time [] [ text "6 hours ago" ]
            ]
        ]
