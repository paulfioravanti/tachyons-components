module Utils exposing (componentsLink, pathify, routeFor, toPath)

import ErrorPage
import Html exposing (Html, a, text)
import Html.Attributes exposing (class, href, title)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import String.Extra
import UrlParser exposing (Parser)


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
pathify stringifiable =
    let
        string =
            stringifiable
                |> toString

        -- This looks like the single exception to the rule, but
        -- if there ends up being more, a better solution will
        -- likely be needed.
        fourOhFourRoute =
            toString ErrorPage.fourOhFourRoute
    in
        if string == fourOhFourRoute then
            "404"
        else
            string
                |> toPath


routeFor : a -> Parser (a -> b) b
routeFor route =
    route
        |> pathify
        |> UrlParser.s
        |> UrlParser.map route


toPath : String -> String
toPath string =
    string
        |> String.Extra.underscored
        |> String.Extra.dasherize
