module Quote.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = LeftBorder
    | PullQuote


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
    [ LeftBorder
    , PullQuote
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        LeftBorder ->
            "left-border"

        PullQuote ->
            "pull-quote"
