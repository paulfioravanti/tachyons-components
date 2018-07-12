module Link.AnimateBackgroundColor.View exposing (view)

import Link.AnimateBackgroundColor.Styles as Styles
import Html exposing (Html, a, div, text)
import Html.Attributes exposing (attribute, class, href)


view : Html msg
view =
    div [ attribute "data-name" "component" ]
        [ div [ class Styles.linkWrapper ]
            [ a [ class Styles.link, href "#0" ]
                [ text "bg-light-blue on hover" ]
            ]
        ]
