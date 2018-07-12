module Button.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = BasicPreviousNext
    | BasicRoundedExtraSmall
    | BasicRoundedSmall


matchers : Parser (Route -> a) a
matchers =
    [ BasicPreviousNext
    , BasicRoundedSmall
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
