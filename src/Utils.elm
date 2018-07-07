module Utils exposing (componentsLink, pathify)

import Html exposing (Html, a, text)
import Html.Attributes exposing (class, href, title)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import String.Extra


componentsLink : msg -> String -> String -> Html msg
componentsLink msg link styles =
    let
        clickOptions =
            onWithOptions
                "click"
                { preventDefault = True, stopPropagation = False }
                (Decode.succeed msg)
    in
        a
            [ class styles
            , href link
            , title "Components"
            , clickOptions
            ]
            [ text "Components" ]


pathify : a -> String
pathify a =
    a
        |> toString
        |> String.Extra.underscored
        |> String.Extra.dasherize
