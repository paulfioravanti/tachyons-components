module Layout.FullScreenCenteredTitle.View exposing (view)

import Html exposing (Html, article, div, h1, text)
import Html.Attributes exposing (attribute, class)
import Layout.FullScreenCenteredTitle.Styles as Styles
import Layout.Image as Image


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ article [ class Styles.article ]
            [ div [ class Styles.titleWrapper ]
                [ h1 [ class Styles.title ]
                    [ text "Vertically centering things in css is easy!" ]
                ]
            ]
        ]
