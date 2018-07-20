module Page.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, s)
import Utils


type Route
    = Double
    | FourByFourMixedGrid
    | PortfolioProject
    | SwissCoverFiveColumns


matchers : Parser (Route -> a) a
matchers =
    map FourByFourMixedGrid (s "4x4-mixed-grid")
        :: ([ Double
            , PortfolioProject
            , SwissCoverFiveColumns
            ]
                |> List.map Utils.routeFor
           )
        |> UrlParser.oneOf
