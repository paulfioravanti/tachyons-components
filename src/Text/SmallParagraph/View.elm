module Text.SmallParagraph.View exposing (view)

import Html exposing (Html, div, main_, p, text)
import Html.Attributes exposing (attribute, class)
import Text.SmallParagraph.Styles as Styles


view : Html msg
view =
    let
        copy =
            """
            Typography has one plain duty before it and that is to convey
            information in writing. No argument or consideration can absolve
            typography from this duty. A printed work which cannot be read
            becomes a product without purpose.
            """
    in
    div [ attribute "data-name" "component" ]
        [ main_ [ class Styles.main_ ]
            [ p [ class Styles.paragraph ]
                [ text copy ]
            ]
        ]
