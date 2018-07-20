module Text.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = LargeParagraph
    | NarrowParagraph
    | Paragraph


matchers : Parser (Route -> a) a
matchers =
    [ LargeParagraph
    , NarrowParagraph
    , Paragraph
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
