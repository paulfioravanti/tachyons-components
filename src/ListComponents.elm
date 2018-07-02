module ListComponents exposing (view)

import Html exposing (Html)
import ListComponents.View as View
import Msg exposing (Msg)


view : Html Msg
view =
    View.view
