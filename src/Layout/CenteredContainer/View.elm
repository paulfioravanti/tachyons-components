module Layout.CenteredContainer.View exposing (view)

import Html exposing (Html, article, div, h1, p, section, text)
import Html.Attributes exposing (attribute, class, style)
import Layout.CenteredContainer.Styles as Styles


view : Html msg
view =
    let
        paragraph =
            """
            Combine width or max-width values with the center class to create
            a centered container for your content.
            """
    in
        div [ attribute "data-name" "component" ]
            [ section [ class Styles.section ]
                [ h1 [ class Styles.heading ]
                    [ text "Centered Container" ]
                , p [ class Styles.paragraph ]
                    [ text paragraph ]
                ]
            ]
