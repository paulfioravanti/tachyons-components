module Marketing.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
import Utils


type Route
    = IPhoneApp


matchers : Parser (Route -> a) a
matchers =
    [ IPhoneApp
    ]
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
