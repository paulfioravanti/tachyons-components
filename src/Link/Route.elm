module Link.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
import Utils


type Route
    = AnimateBackgroundColor
    | AnimateColor
    | DimNoUnderline
    | UnderlineOnHover


matchers : Parser (Route -> a) a
matchers =
    [ AnimateBackgroundColor
    , AnimateColor
    , DimNoUnderline
    , UnderlineOnHover
    ]
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
