module Table.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Basic
    | StripedDark


matchers : Parser (Route -> a) a
matchers =
    [ Basic
    , StripedDark
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
