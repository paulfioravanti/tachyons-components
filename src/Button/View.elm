module Button.View exposing (view)

import Button.Route
    exposing
        ( Route
            ( BasicPreviousNext
            , BasicRoundedExtraSmall
            , BasicRoundedSmall
            , BasicRounded
            )
        )
import Button.BasicPreviousNext.View as BasicPreviousNext
import Button.BasicRoundedExtraSmall.View as BasicRoundedExtraSmall
import Button.BasicRoundedSmall.View as BasicRoundedSmall
import Button.BasicRounded.View as BasicRounded
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        BasicPreviousNext ->
            BasicPreviousNext.view

        BasicRoundedExtraSmall ->
            BasicRoundedExtraSmall.view

        BasicRoundedSmall ->
            BasicRoundedSmall.view

        BasicRounded ->
            BasicRounded.view
