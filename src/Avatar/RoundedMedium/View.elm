module Avatar.RoundedMedium.View exposing (view)

import Avatar.RoundedMedium.Styles as Styles
import Html exposing (Html, div, img)
import Html.Attributes exposing (alt, class, src)


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