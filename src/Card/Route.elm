module Card.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = AlbumCentered
    | AlbumLeft
    | BasicTextCard
    | NewsCard
    | ProductCard
    | ProfileCard
    | ProfileCardTitleSubtitle
    | SuggestedProfile


matchers : Parser (Route -> a) a
matchers =
    [ AlbumCentered
    , AlbumLeft
    , BasicTextCard
    , NewsCard
    , ProductCard
    , ProfileCard
    , ProfileCardTitleSubtitle
    , SuggestedProfile
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
