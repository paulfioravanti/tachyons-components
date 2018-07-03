module ListComponents.View exposing (view)

import Footer
import Html exposing (Html, div)
import ListComponents.Header as Header
import ListComponents.Main as Main
import Msg exposing (Msg(ChangeLocation))
import Route exposing (Route(ListComponents))


view : Html Msg
view =
    div []
        [ Header.view (ChangeLocation ListComponents)
        , Main.view
        , Footer.view (ChangeLocation ListComponents)
        ]
