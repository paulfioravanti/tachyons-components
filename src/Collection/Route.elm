module Collection.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
        |> Url.Parser.oneOf
