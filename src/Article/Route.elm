module Article.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = Feature
    | FullBleedBackground
    | HeadlineTitleText
    | LargeTitleText
    | TitleText


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Feature (s "feature")
        , map FullBleedBackground (s "full-bleed-background")
        , map HeadlineTitleText (s "headline-title-text")
        , map LargeTitleText (s "large-title-text")
        , map TitleText (s "title-text")
        ]
