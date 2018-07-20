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


matchers : Parser (Route -> a) a
matchers =
    [ LargeParagraph
    , NarrowParagraph
    , Paragraph
    , SmallNarrowParagraph
    , SmallParagraph
    , TitleSubtitleCentered
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
