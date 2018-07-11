module ListComponents.View exposing (view)

import Html exposing (Html, div)
import ListComponents.Header as Header
import ListComponents.Main as Main
import Route exposing (Route(ListComponents))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Header.view (changeLocationMsg ListComponents)
        , Main.view changeLocationMsg
        ]
