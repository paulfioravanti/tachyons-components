module ListComponents exposing (view)

import Html exposing (Html)
import ListComponents.View as View


view : Html msg -> Html msg
view footer =
    View.view footer
