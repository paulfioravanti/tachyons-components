module Button.View exposing (view)

import Button.Basic.View as Basic
import Button.BasicPreviousNext.View as BasicPreviousNext
import Button.BasicRounded.View as BasicRounded
import Button.BasicRoundedExtraSmall.View as BasicRoundedExtraSmall
import Button.BasicRoundedSmall.View as BasicRoundedSmall
import Button.CenteredIcons.View as CenteredIcons
import Button.Pill.View as Pill
import Button.PillGrow.View as PillGrow
import Button.Route as Route exposing (Route)
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.Basic ->
            Basic.view

        Route.BasicPreviousNext ->
            BasicPreviousNext.view

        Route.BasicRoundedExtraSmall ->
            BasicRoundedExtraSmall.view

        Route.BasicRoundedSmall ->
            BasicRoundedSmall.view

        Route.BasicRounded ->
            BasicRounded.view

        Route.CenteredIcons ->
            CenteredIcons.view

        Route.Pill ->
            Pill.view

        Route.PillGrow ->
            PillGrow.view
