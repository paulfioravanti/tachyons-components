module ListComponents.View exposing (view)

import Html exposing (Html, div)
import ListComponents.Footer as Footer
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
