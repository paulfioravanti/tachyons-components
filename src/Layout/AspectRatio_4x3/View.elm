module Layout.AspectRatio_4x3.View exposing (view)

import Html exposing (Html, article, div)
import Html.Attributes exposing (attribute, class, style)
import Layout.AspectRatio_4x3.Styles as Styles


view : Html msg
view =
    let
        backgroundImage =
            style "backgroundImage" "url(http://mrmrs.github.io/photos/001.jpg)"
    in
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ div [ class Styles.backgroundImageWrapper ]
                [ div [ class Styles.backgroundImage, backgroundImage ]
                    []
                ]
            ]
        ]
