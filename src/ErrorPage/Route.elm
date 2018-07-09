module ErrorPage.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, s)


type Route
    = FourOhFour


matchers : Parser (Route -> a) a
matchers =
    [ map FourOhFour (s "404")
    ]
        |> UrlParser.oneOf
