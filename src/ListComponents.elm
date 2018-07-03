module ListComponents exposing (view)

import Html exposing (Html)
import ListComponents.View as View
import Route exposing (Route)


view : msg -> (Route -> msg) -> Html msg -> Html msg
view msg changeLocationMsg footer =
    View.view msg changeLocationMsg footer
