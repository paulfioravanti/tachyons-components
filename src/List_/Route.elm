module List_.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = BlockItemDottedBorder
    | BorderSpaced


matchers : Parser (Route -> a) a
matchers =
    [ BlockItemDottedBorder
    , BorderSpaced
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
