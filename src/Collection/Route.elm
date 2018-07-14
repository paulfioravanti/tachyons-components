module Collection.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Albums
    | Movies
    | PostersDim


matchers : Parser (Route -> a) a
matchers =
    [ Albums
    , Movies
    , PostersDim
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
