module DefinitionList.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = Inline
    | Simple


matchers : Parser (Route -> a) a
matchers =
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
    [ Inline
    , Simple
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        Inline ->
            "inline"

        Simple ->
            "simple"
