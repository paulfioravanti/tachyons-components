module Button.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = BasicPreviousNext


matchers : Parser (Route -> a) a
matchers =
    [ BasicPreviousNext
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
