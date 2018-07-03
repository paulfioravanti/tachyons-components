module NotFound exposing (view)

import Html exposing (Html, div, h1, text)
import Msg exposing (Msg)


view : Html Msg
view =
    div []
        [ h1 [] [ text "Not Found!" ] ]
