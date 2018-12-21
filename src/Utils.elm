module Utils exposing (componentsLink, pathify, routeFor, toPath)

import Debug
import Html exposing (Html, a, text)
import Html.Attributes exposing (class, href, title)
import Html.Events exposing (custom)
import Json.Decode as Decode
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


pathify : a -> String
pathify stringifiable =
    stringifiable
        |> Debug.toString
        |> toPath


routeFor : a -> Parser (a -> b) b
routeFor route =
    route
        |> pathify
        |> Url.Parser.s
        |> Url.Parser.map route


toPath : String -> String
toPath string =
    string
        |> String.Extra.underscored
        |> String.Extra.dasherize
