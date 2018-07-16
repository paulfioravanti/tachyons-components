module Form.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = CheckboxList
    | InputTextLabel


matchers : Parser (Route -> a) a
matchers =
    [ CheckboxList
    , InputTextLabel
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
