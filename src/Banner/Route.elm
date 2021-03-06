module Banner.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = Basic
    | Info
    | SingleCta


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
    , Info
    , SingleCta
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        Basic ->
            "basic"

        Info ->
            "info"

        SingleCta ->
            "single-cta"
