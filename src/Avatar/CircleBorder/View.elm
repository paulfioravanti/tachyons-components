module Avatar.CircleBorder.View exposing (view)

import Avatar.CircleBorder.Styles as Styles
import Html
    exposing
        ( Html
        , a
        , article
        , div
        , h1
        , h2
        , img
        , p
        , section
        , text
        )
import Html.Attributes exposing (alt, class, href, src)


view : Html msg -> Html msg
view footer =
    div []
        [ div [ class Styles.avatar ]
            [ img
                [ class Styles.image
                , src "http://tachyons.io/img/logo.jpg"
                , alt "avatar"
                ]
                []
            ]
        , footer
        ]
