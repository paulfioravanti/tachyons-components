module DefinitionList.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
import Utils


type Route
    = Inline
    | Simple


matchers : Parser (Route -> a) a
matchers =
    [ Inline
    , Simple
    ]
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
