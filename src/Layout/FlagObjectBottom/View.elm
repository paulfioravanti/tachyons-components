module Layout.FlagObjectBottom.View exposing (view)

import Html exposing (Html, article, div, h1, img, p, section, text)
import Html.Attributes exposing (alt, attribute, class, src, style)
import Layout.FlagObjectBottom.Styles as Styles


view : Html msg
view =
    let
        copy =
            """
            This text is aligned to the bottom, no matter what the
            height of the image is.
            """
    in
        div [ attribute "data-name" "component" ]
            [ div [ class Styles.content ]
                [ div [ class Styles.imageWrapper ]
                    [ img
                        [ class Styles.image
                        , src "http://tachyons.io/img/super-wide.jpg"
                        , alt "A bright blue sky"
                        ]
                        []
                    ]
                , div [ class Styles.copyWrapper ]
                    [ p [ class Styles.copy ]
                        [ text copy ]
                    ]
                ]
            ]
