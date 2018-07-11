module ListComponents exposing (view)

import Html exposing (Html)
import ListComponents.View as View
import Route exposing (Route)


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    View.view changeLocationMsg
