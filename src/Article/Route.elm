module Article.Route exposing (Route(..), matchers, toPath)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = Feature
    | FullBleedBackground
    | HeadlineTitleText
    | LargeTitleText
    | TitleText


toPath : Route -> String
toPath route =
    case route of
        Feature ->
            "feature/"

        FullBleedBackground ->
            "full-bleed-background/"

        HeadlineTitleText ->
            "headline-title-text/"

        LargeTitleText ->
            "large-title-text/"

        TitleText ->
            "title-text/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Feature (s "feature")
        , map FullBleedBackground (s "full-bleed-background")
        , map HeadlineTitleText (s "headline-title-text")
        , map LargeTitleText (s "large-title-text")
        , map TitleText (s "title-text")
        ]
