module Text.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = LargeParagraph


matchers : Parser (Route -> a) a
matchers =
    [ LargeParagraph
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
