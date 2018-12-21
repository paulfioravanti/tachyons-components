module Text.TitleSubtitleCentered.View exposing (view)

import Html exposing (Html, div, h1, h2, header, text)
import Html.Attributes exposing (attribute, class)
import Text.TitleSubtitleCentered.Styles as Styles


view : Html msg
view =
    let
        subtitle =
            """
            This is the subtitle where additional information can go if
            you really need it.
            """
    in
    div [ attribute "data-name" "component" ]
        [ header [ class Styles.header ]
            [ h1 [ class Styles.title ]
                [ text "This is the title" ]
            , h2 [ class Styles.subtitle ]
                [ text subtitle ]
            ]
        ]
