module Text.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = LargeParagraph
    | NarrowParagraph
    | Paragraph
    | SmallNarrowParagraph
    | SmallParagraph
    | TitleSubtitleCentered
    | WideParagraph


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
    [ LargeParagraph
    , NarrowParagraph
    , Paragraph
    , SmallNarrowParagraph
    , SmallParagraph
    , TitleSubtitleCentered
    , WideParagraph
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        LargeParagraph ->
            "large-paragraph"

        NarrowParagraph ->
            "narrow-paragraph"

        Paragraph ->
            "paragraph"

        SmallNarrowParagraph ->
            "small-narrow-paragraph"

        SmallParagraph ->
            "small-paragraph"

        TitleSubtitleCentered ->
            "title-subtitle-centered"

        WideParagraph ->
            "wide-paragraph"
