module Route exposing (Route(..), fromLocation, toPath)

import Navigation exposing (Location)
import UrlParser exposing (Parser, (</>), map, oneOf, s, string, top)


type Route
    = ListComponents
    | NotFound


fromLocation : Location -> Route
fromLocation location =
    location
        |> UrlParser.parsePath matchers
        |> Maybe.withDefault NotFound


toPath : Route -> String
toPath route =
    case route of
        ListComponents ->
            "/components/"

        NotFound ->
            "/not-found/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map ListComponents top
        , map ListComponents (s "components")
        ]
