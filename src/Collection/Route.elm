module Collection.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Albums
    | Movies
    | Posters
    | PostersDim
    | SquareTitleSubtitle


matchers : Parser (Route -> a) a
matchers =
    [ Albums
    , Movies
    , Posters
    , PostersDim
    , SquareTitleSubtitle
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
