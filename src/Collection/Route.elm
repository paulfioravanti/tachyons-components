module Collection.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Albums
    | Movies


matchers : Parser (Route -> a) a
matchers =
    [ Albums
    , Movies
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
