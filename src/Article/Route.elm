module Article.Route exposing (Route(..), matchers, toPath)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = Feature


toPath : Route -> String
toPath route =
    case route of
        Feature ->
            "feature/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Feature (s "feature")
        ]
