module Text.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


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
    [ LargeParagraph
    , NarrowParagraph
    , Paragraph
    , SmallNarrowParagraph
    , SmallParagraph
    , TitleSubtitleCentered
    , WideParagraph
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
