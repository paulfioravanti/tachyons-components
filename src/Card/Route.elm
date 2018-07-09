module Card.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AlbumCentered


matchers : Parser (Route -> a) a
matchers =
    [ AlbumCentered
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
