module Text.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
        |> Url.Parser.oneOf
