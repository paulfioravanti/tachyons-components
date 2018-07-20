module Text.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = LargeParagraph
    | NarrowParagraph
    | Paragraph
    | SmallNarrowParagraph
    | SmallParagraph


matchers : Parser (Route -> a) a
matchers =
    [ LargeParagraph
    , NarrowParagraph
    , Paragraph
    , SmallNarrowParagraph
    , SmallParagraph
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
