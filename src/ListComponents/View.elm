module ListComponents.View exposing (view)

import Footer
import Html exposing (Html, div)
import ListComponents.Header as Header
import ListComponents.Main as Main
import Msg exposing (Msg)


view : Html Msg
view =
    div []
        [ Header.view
        , Main.view
        , Footer.view
        ]
