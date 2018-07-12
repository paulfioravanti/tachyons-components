module Button.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = Basic
    | BasicPreviousNext
    | BasicRoundedExtraSmall
    | BasicRoundedSmall
    | BasicRounded
    | CenteredIcons
    | Pill
    | PillGrow


matchers : Parser (Route -> a) a
matchers =
    [ Basic
    , BasicPreviousNext
    , BasicRoundedSmall
    , BasicRounded
    , CenteredIcons
    , Pill
    , PillGrow
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
