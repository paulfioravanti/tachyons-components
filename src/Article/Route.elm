module Article.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, oneOf)
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
    oneOf
        [ Utils.routeFor Feature
        , Utils.routeFor FullBleedBackground
        , Utils.routeFor HeadlineTitleText
        , Utils.routeFor LargeTitleText
        , Utils.routeFor LeftTitle
        , Utils.routeFor LeftTitleTopBorder
        , Utils.routeFor PhotoEssay
        , Utils.routeFor SingleColumnLargeTitle
        , Utils.routeFor TitleHighlightHeaderCover
        , Utils.routeFor TitleText
        , Utils.routeFor TitleTextImage
        ]
