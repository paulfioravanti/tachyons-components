module Banner.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
        |> Url.Parser.oneOf
