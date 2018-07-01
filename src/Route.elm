module Route exposing (Route(..), toPath)


type Route
    = ListComponentsRoute
    | NotFoundRoute


toPath : Route -> String
toPath route =
    case route of
        ListComponentsRoute ->
            "/components/"

        NotFoundRoute ->
            "/not-found/"
