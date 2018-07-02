module Utils exposing (componentsLink)

import Html exposing (Html, a, text)
import Html.Attributes exposing (class, href, title)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import Msg exposing (Msg(ChangeLocation))
import Route exposing (Route(ListComponents))


componentsLink : String -> Html Msg
componentsLink styles =
    let
        clickOptions =
            onWithOptions
                "click"
                { preventDefault = True, stopPropagation = False }
                (Decode.succeed (ChangeLocation ListComponents))
    in
        a
            [ class styles
            , href (Route.toPath ListComponents)
            , title "Components"
            , clickOptions
            ]
            [ text "Components" ]
