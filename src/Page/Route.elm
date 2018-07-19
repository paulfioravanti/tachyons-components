module Page.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, s)
import Utils


type Route
    = Double
    | FourByFourMixedGrid


matchers : Parser (Route -> a) a
matchers =
    map FourByFourMixedGrid (s "4x4-mixed-grid")
        :: ([ Double ]
                |> List.map Utils.routeFor
           )
        |> UrlParser.oneOf
