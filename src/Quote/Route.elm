module Quote.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = LeftBorder
    | PullQuote


matchers : Parser (Route -> a) a
matchers =
    [ LeftBorder
    , PullQuote
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
