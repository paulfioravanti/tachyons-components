module Marketing.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = IPhoneApp


matchers : Parser (Route -> a) a
matchers =
    [ IPhoneApp
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
