module Layout.FlagObjectCollapse.View exposing (view)

import Html exposing (Html, article, div, h1, img, p, section, text)
import Html.Attributes exposing (alt, attribute, class, src, style)
import Layout.FlagObjectCollapse.Styles as Styles


view : Html msg
view =
    let
        copy =
            """
            For desktop, this text is vertically aligned middle, no matter
            what the height of the image is. On mobile, this is a paragraph
            below an image.
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
