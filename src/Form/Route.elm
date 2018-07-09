module Form.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, s)
import Utils


type Route
    = CheckboxList


matchers : Parser (Route -> a) a
matchers =
    [ CheckboxList
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
