module ListComponents exposing (view)

import Html exposing (Html)
import ListComponents.View as View
import Model exposing (Model)
import Msg exposing (Msg)


view : Html Msg
view =
    View.view
