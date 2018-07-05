module Article.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = Feature
    | FullBleedBackground
    | HeadlineTitleText
    | LargeTitleText
    | LeftTitle
    | LeftTitleTopBorder
    | PhotoEssay
    | TitleText


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Feature (s "feature")
        , map FullBleedBackground (s "full-bleed-background")
        , map HeadlineTitleText (s "headline-title-text")
        , map LargeTitleText (s "large-title-text")
        , map LeftTitle (s "left-title")
        , map LeftTitleTopBorder (s "left-title-top-border")
        , map PhotoEssay (s "photo-essay")
        , map TitleText (s "title-text")
        ]
