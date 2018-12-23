module Article.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = Feature
    | FullBleedBackground
    | HeadlineTitleText
    | LargeTitleText
    | LeftTitle
    | LeftTitleTopBorder
    | PhotoEssay
    | SingleColumnLargeTitle
    | TitleHighlightHeaderCover
    | TitleText
    | TitleTextImage


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
    [ Feature
    , FullBleedBackground
    , HeadlineTitleText
    , LargeTitleText
    , LeftTitle
    , LeftTitleTopBorder
    , PhotoEssay
    , SingleColumnLargeTitle
    , TitleHighlightHeaderCover
    , TitleText
    , TitleTextImage
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        Feature ->
            "feature"

        FullBleedBackground ->
            "full-bleed-background"

        HeadlineTitleText ->
            "headline-title-text"

        LargeTitleText ->
            "large-title-text"

        LeftTitle ->
            "left-title"

        LeftTitleTopBorder ->
            "left-title-top-border"

        PhotoEssay ->
            "photo-essay"

        SingleColumnLargeTitle ->
            "single-column-large-title"

        TitleHighlightHeaderCover ->
            "title-highlight-header-cover"

        TitleText ->
            "title-text"

        TitleTextImage ->
            "title-text-image"
