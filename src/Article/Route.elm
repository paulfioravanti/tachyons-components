module Article.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
import Utils


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
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
