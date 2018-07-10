module Table.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Basic


matchers : Parser (Route -> a) a
matchers =
    [ Basic
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
