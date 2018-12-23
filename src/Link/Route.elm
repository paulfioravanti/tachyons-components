module Link.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = AnimateBackgroundColor
    | AnimateColor
    | DimNoUnderline
    | UnderlineOnHover


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
    [ AnimateBackgroundColor
    , AnimateColor
    , DimNoUnderline
    , UnderlineOnHover
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        AnimateBackgroundColor ->
            "animate-background-color"

        AnimateColor ->
            "animate-color"

        DimNoUnderline ->
            "dim-no-underline"

        UnderlineOnHover ->
            "underline-on-hover"
