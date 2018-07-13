module Card.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AlbumCentered
    | AlbumLeft
    | BasicTextCard
    | NewsCard


matchers : Parser (Route -> a) a
matchers =
    [ AlbumCentered
    , AlbumLeft
    , BasicTextCard
    , NewsCard
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
