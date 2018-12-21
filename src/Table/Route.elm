module Table.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
        |> Url.Parser.oneOf
