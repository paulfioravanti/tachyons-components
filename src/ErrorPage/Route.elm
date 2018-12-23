module ErrorPage.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser, map, s)


type Route
    = FourOhFour


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
    [ FourOhFour
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        FourOhFour ->
            "404"
