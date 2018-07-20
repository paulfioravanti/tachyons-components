module Text.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = LargeParagraph
    | NarrowParagraph
    | Paragraph
    | SmallNarrowParagraph


matchers : Parser (Route -> a) a
matchers =
    [ LargeParagraph
    , NarrowParagraph
    , Paragraph
    , SmallNarrowParagraph
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
