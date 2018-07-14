module Collection.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Albums
    | Movies
    | Posters
    | PostersDim
    | SquareTitleSubtitle
    | Vinyl


matchers : Parser (Route -> a) a
matchers =
    [ Albums
    , Movies
    , Posters
    , PostersDim
    , SquareTitleSubtitle
    , Vinyl
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
