module Header.RoundedAvatarTitleSubtitle.View exposing (view)

import Header.RoundedAvatarTitleSubtitle.Styles as Styles
import Html exposing (Html, div, h1, h2, header, img, text)
import Html.Attributes exposing (alt, attribute, class, src)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ header [ class Styles.header ]
            [ img
                [ class Styles.image
                , src "http://tachyons.io/img/logo.jpg"
                , alt "avatar"
                ]
                []
            , h1 [ class Styles.heading ]
                [ text "Jasper Whitehouse" ]
            , h2 [ class Styles.subheading ]
                [ text "Los Angeles" ]
            ]
        ]
