module ListComponents.Utils exposing (sectionHeader)

import Html exposing (Html, div, h3, text)
import Html.Attributes exposing (class, id)
import ListComponents.Styles as Styles
import Msg exposing (Msg)


sectionHeader : String -> String -> Html Msg
sectionHeader sectionId title =
    div [ class Styles.sectionHeader, id sectionId ]
        [ div [ class Styles.sectionTitleWrapper ]
            [ h3 [ class Styles.sectionTitle ]
                [ text title ]
            ]
        ]
