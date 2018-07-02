module ListComponents.Footer exposing (view)

import Html exposing (Html, a, div, footer, nav, text)
import Html.Attributes exposing (class, href, title)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import ListComponents.Styles as Styles
import Msg exposing (Msg(ChangeLocation))
import Route exposing (Route(ListComponents))


view : Html Msg
view =
    footer [ class Styles.footer ]
        [ div [ class Styles.centerContent ]
            []
        ]
