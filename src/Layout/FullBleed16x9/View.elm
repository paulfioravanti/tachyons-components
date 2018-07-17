module Layout.FullBleed16x9.View exposing (view)

import Html exposing (Html, article, div, h1, img, main_, p, section, text)
import Html.Attributes exposing (alt, attribute, class, src, style)
import Layout.FullBleed16x9.Styles as Styles
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
                , style
                    [ ( "backgroundImage"
                      , "url(http://mrmrs.github.io/images/00" ++ id ++ ".jpg)"
                      )
                    ]
                ]
                []
            ]
        ]
