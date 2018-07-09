module DefinitionList.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Inline


matchers : Parser (Route -> a) a
matchers =
    [ Inline
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
