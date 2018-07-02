module View exposing (view)

import Html exposing (Html)
import ListComponents
import Model exposing (Model)
import Msg exposing (Msg)
import Route exposing (Route(NotFound, ListComponents))


view : Model -> Html Msg
view model =
    case model of
        ListComponents ->
            ListComponents.view

        NotFound ->
            ListComponents.view
