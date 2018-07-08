module Banner.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Basic
    | Info
    | SingleCta


matchers : Parser (Route -> a) a
matchers =
    [ Basic
    , Info
    , SingleCta
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
