module Quote.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
        |> Url.Parser.oneOf
