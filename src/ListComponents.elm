module ListComponents exposing (view)

import Html exposing (Html)
import ListComponents.View as View
import Route exposing (Route)


view : Html msg -> Html msg
view footer =
    View.view footer
