module Marketing.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = IPhoneApp


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
    [ IPhoneApp
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        IPhoneApp ->
            "iphone-app"
