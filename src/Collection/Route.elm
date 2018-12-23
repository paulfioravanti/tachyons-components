module Collection.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = Albums
    | Movies
    | Posters
    | PostersDim
    | SquareTitleSubtitle
    | Vinyl


matchers : Parser (Route -> a) a
matchers =
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
    [ Albums
    , Movies
    , Posters
    , PostersDim
    , SquareTitleSubtitle
    , Vinyl
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        Albums ->
            "albums"

        Movies ->
            "movies"

        Posters ->
            "posters"

        PostersDim ->
            "posters-dim"

        SquareTitleSubtitle ->
            "square-title-subtitle"

        Vinyl ->
            "vinyl"
