module Article.Route exposing (Route(..), matchers, toPath)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = Feature
    | FullBleedBackground
    | HeadlineTitleText


toPath : Route -> String
toPath route =
    case route of
        Feature ->
            "feature/"

        FullBleedBackground ->
            "full-bleed-background/"

        HeadlineTitleText ->
            "headline-title-text/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Feature (s "feature")
        , map FullBleedBackground (s "full-bleed-background")
        , map HeadlineTitleText (s "headline-title-text")
        ]
