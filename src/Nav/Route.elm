module Nav.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = FixedSemiTransparent
    | LargeTitleLinkList


matchers : Parser (Route -> a) a
matchers =
    [ FixedSemiTransparent
    , LargeTitleLinkList
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
