module Quote.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = LeftBorder


matchers : Parser (Route -> a) a
matchers =
    [ LeftBorder
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
