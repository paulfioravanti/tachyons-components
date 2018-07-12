module Button.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Basic
    | BasicPreviousNext
    | BasicRoundedExtraSmall
    | BasicRoundedSmall
    | BasicRounded


matchers : Parser (Route -> a) a
matchers =
    [ Basic
    , BasicPreviousNext
    , BasicRoundedSmall
    , BasicRounded
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
