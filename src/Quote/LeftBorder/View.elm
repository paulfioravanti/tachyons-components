module Quote.LeftBorder.View exposing (view)

import Html exposing (Html, blockquote, cite, div, p, text)
import Html.Attributes exposing (attribute, class)
import Quote.LeftBorder.Styles as Styles


view : Html msg
view =
    let
        copy =
            """
            Discipline in typography is a prime virtue. Individuality must be
            secured by means that are rational. Distinction needs to be won by
            simplicity and restraint. It is equally true that these qualities
            need to be infused wiht a certain spirit and vitality, or they
            degenerate into dullness and mediocrity.
            """
    in
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.quote ]
            [ blockquote [ class Styles.blockquote ]
                [ p [ class Styles.copy ]
                    [ text copy ]
                , cite [ class Styles.cite ]
                    [ text "―Stanley Morison" ]
                ]
            ]
        ]
