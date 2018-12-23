module Utils exposing (componentsLink, toPath)

import Html exposing (Html, a, text)
import Html.Attributes exposing (class, href, title)
import String.Extra
import Url.Parser exposing (Parser)


componentsLink : String -> String -> Html msg
componentsLink link styles =
    a
        [ class styles
        , href link
        , title "Components"
        ]
        [ text "Components" ]


toPath : String -> String
toPath string =
    string
        |> String.Extra.underscored
        |> String.Extra.dasherize
