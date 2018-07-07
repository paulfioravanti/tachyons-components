module Avatar.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, oneOf)
import Utils


type Route
    = CircleBorder


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ Utils.routeFor CircleBorder
        ]
