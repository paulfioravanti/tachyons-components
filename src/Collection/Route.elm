module Collection.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Albums


matchers : Parser (Route -> a) a
matchers =
    [ Albums
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
