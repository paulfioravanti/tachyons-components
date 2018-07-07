module Article.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
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
        |> UrlParser.oneOf
