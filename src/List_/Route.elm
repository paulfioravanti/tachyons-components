module List_.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = BlockItemDottedBorder


matchers : Parser (Route -> a) a
matchers =
    [ BlockItemDottedBorder
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
