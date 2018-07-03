module ListComponents.View exposing (view)

import Html exposing (Html, div)
import ListComponents.Header as Header
import ListComponents.Main as Main
import Route exposing (Route)


view : msg -> (Route -> msg) -> Html msg -> Html msg
view msg changeLocationMsg footer =
    div []
        [ Header.view msg
        , Main.view changeLocationMsg
        , footer
        ]
