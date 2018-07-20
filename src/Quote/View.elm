module Quote.View exposing (view)

import Html exposing (Html)
import Quote.LeftBorder.View as LeftBorder
import Quote.PullQuote.View as PullQuote
import Quote.Route exposing (Route(LeftBorder, PullQuote))


view : Route -> Html msg
view route =
    case route of
        LeftBorder ->
            LeftBorder.view

        PullQuote ->
            PullQuote.view
