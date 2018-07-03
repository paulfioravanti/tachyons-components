module ListComponents.View exposing (view)

import Footer
import Html exposing (Html, div)
import ListComponents.Header as Header
import ListComponents.Main as Main
import Route exposing (Route)


view : msg -> (Route -> msg) -> Html msg
view msg changeLocationMsg =
    div []
        [ Header.view msg
        , Main.view changeLocationMsg
        , Footer.view msg
        ]
