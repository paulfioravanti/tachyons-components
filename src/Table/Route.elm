module Table.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = Basic
    | StripedDark


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
    [ Basic
    , StripedDark
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        Basic ->
            "basic"

        StripedDark ->
            "striped-dark"
