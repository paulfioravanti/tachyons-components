module Table.Basic.View exposing (view)

import Html exposing (Html, div)


view : Html msg -> Html msg
view footer =
    div []
        [ footer
        ]
