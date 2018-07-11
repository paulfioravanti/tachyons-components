module Avatar.Circle.View exposing (view)

import Avatar.Circle.Styles as Styles
import Html exposing (Html, div, img)
import Html.Attributes exposing (alt, attribute, class, src)


view : Html msg
view =
    div [ attribute "data-name" "attribute" ]
        [ div [ class Styles.avatar ]
            [ img
                [ class Styles.image
                , src "http://tachyons.io/img/logo.jpg"
                , alt "avatar"
                ]
                []
            ]
        ]
