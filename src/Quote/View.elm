module Quote.View exposing (view)

import Html exposing (Html)
import Quote.LeftBorder.View as LeftBorder
import Quote.PullQuote.View as PullQuote
import Quote.Route as Route exposing (Route)


view : Route -> Html msg
view route =
    case route of
        Route.LeftBorder ->
            LeftBorder.view

        Route.PullQuote ->
            PullQuote.view
