module Card.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AlbumCentered
    | AlbumLeft


matchers : Parser (Route -> a) a
matchers =
    [ AlbumCentered
    , AlbumLeft
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
