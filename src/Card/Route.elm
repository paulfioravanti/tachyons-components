module Card.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
    | TextCard


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
    , TextCard
    ]
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
