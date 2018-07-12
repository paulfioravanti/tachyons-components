module Button.View exposing (view)

import Button.Route
    exposing
        ( Route
            ( Basic
            , BasicPreviousNext
            , BasicRoundedExtraSmall
            , BasicRoundedSmall
            , BasicRounded
            , CenteredIcons
            , PillGrow
            )
        )
import Button.Basic.View as Basic
import Button.BasicPreviousNext.View as BasicPreviousNext
import Button.BasicRoundedExtraSmall.View as BasicRoundedExtraSmall
import Button.BasicRoundedSmall.View as BasicRoundedSmall
import Button.BasicRounded.View as BasicRounded
import Button.CenteredIcons.View as CenteredIcons
import Button.PillGrow.View as PillGrow
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Basic ->
            Basic.view

        BasicPreviousNext ->
            BasicPreviousNext.view

        BasicRoundedExtraSmall ->
            BasicRoundedExtraSmall.view

        BasicRoundedSmall ->
            BasicRoundedSmall.view

        BasicRounded ->
            BasicRounded.view

        CenteredIcons ->
            CenteredIcons.view

        PillGrow ->
            PillGrow.view
