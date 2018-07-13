module Card.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AlbumCentered
    | AlbumLeft
    | BasicTextCard
    | NewsCard
    | ProductCard
    | ProfileCardTitleSubtitle


matchers : Parser (Route -> a) a
matchers =
    [ AlbumCentered
    , AlbumLeft
    , BasicTextCard
    , NewsCard
    , ProductCard
    , ProfileCardTitleSubtitle
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
