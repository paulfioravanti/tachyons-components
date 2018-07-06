module Avatar.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = CircleBorder


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map CircleBorder (s "circle-border")
        ]
