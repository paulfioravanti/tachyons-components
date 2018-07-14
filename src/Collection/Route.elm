module Collection.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Albums
    | Movies
    | Posters
    | PostersDim


matchers : Parser (Route -> a) a
matchers =
    [ Albums
    , Movies
    , Posters
    , PostersDim
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
