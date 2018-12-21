module ListComponents.View exposing (view)

import Html exposing (Html, div)
import ListComponents.Header as Header
import ListComponents.Main as Main


view : Html msg -> Html msg
view footer =
    div []
        [ Header.view
        , Main.view
        , footer
        ]
