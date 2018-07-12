module Button.View exposing (view)

import Button.Route
    exposing
        ( Route
            ( BasicPreviousNext
            , BasicRoundedExtraSmall
            )
        )
import Button.BasicPreviousNext.View as BasicPreviousNext
import Button.BasicRoundedExtraSmall.View as BasicRoundedExtraSmall
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        BasicPreviousNext ->
            BasicPreviousNext.view

        BasicRoundedExtraSmall ->
            BasicRoundedExtraSmall.view
