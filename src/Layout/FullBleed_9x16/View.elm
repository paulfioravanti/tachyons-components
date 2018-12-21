module Layout.FullBleed_9x16.View exposing (view)

import Html exposing (Html, div, main_)
import Html.Attributes exposing (attribute, class, style)
import Layout.FullBleed_9x16.Styles as Styles
import Layout.Image as Image


view : Html msg
view =
    let
        imageIds =
            Image.ids
    in
    div [ attribute "data-name" "component" ]
        [ main_ [ class Styles.main_ ]
            (List.map image imageIds)
        ]


image : String -> Html msg
image id =
    div [ class Styles.formatting ]
        [ div [ class Styles.aspectRatio ]
            [ div
                [ class Styles.image
                , style "backgroundImage" ("url(http://mrmrs.github.io/images/00" ++ id ++ ".jpg)")
                ]
                []
            ]
        ]
