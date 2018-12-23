module Page.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser, map, s)


type Route
    = Double
    | FourByFourMixedGrid
    | PortfolioProject
    | SwissCoverFiveColumns


matchers : Parser (Route -> a) a
matchers =
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
    [ Double
    , FourByFourMixedGrid
    , PortfolioProject
    , SwissCoverFiveColumns
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        Double ->
            "double"

        FourByFourMixedGrid ->
            "4x4-mixed-grid"

        PortfolioProject ->
            "portfolio-project"

        SwissCoverFiveColumns ->
            "swiss-cover-five-columns"
