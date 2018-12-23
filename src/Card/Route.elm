module Card.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


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
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
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
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        AlbumCentered ->
            "album-centered"

        AlbumLeft ->
            "album-left"

        BasicTextCard ->
            "basic-text-card"

        NewsCard ->
            "news-card"

        ProductCard ->
            "product-card"

        ProfileCard ->
            "profile-card"

        ProfileCardTitleSubtitle ->
            "profile-card-title-subtitle"

        SuggestedProfile ->
            "suggested-profile"

        TextCard ->
            "text-card"
