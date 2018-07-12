module Button.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = BasicPreviousNext
    | BasicRoundedExtraSmall


matchers : Parser (Route -> a) a
matchers =
    [ BasicPreviousNext
    , BasicRoundedExtraSmall
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
