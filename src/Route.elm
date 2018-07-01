module Route exposing (Route(..), fromLocation, toPath)

import Navigation exposing (Location)
import UrlParser exposing (Parser, (</>), map, oneOf, s, string, top)


type Route
    = ListComponentsRoute
    | NotFoundRoute


fromLocation : Location -> Route
fromLocation location =
    location
        |> UrlParser.parsePath matchers
        |> Maybe.withDefault NotFoundRoute


toPath : Route -> String
toPath route =
    case route of
        ListComponentsRoute ->
            "/components/"

        NotFoundRoute ->
            "/not-found/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map ListComponentsRoute top
        , map ListComponentsRoute (s "components")
        ]
