module Article.Route exposing (Route(..), matchers, toPath)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = Feature
    | FullBleedBackground


toPath : Route -> String
toPath route =
    case route of
        Feature ->
            "feature/"

        FullBleedBackground ->
            "full-bleed-background/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Feature (s "feature")
        , map FullBleedBackground (s "full-bleed-background")
        ]
