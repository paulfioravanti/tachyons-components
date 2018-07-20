module Text.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = LargeParagraph
    | NarrowParagraph


matchers : Parser (Route -> a) a
matchers =
    [ LargeParagraph
    , NarrowParagraph
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
