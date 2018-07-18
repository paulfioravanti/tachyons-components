module Link.View exposing (view)

import Link.AnimateBackgroundColor.View as AnimateBackgroundColor
import Link.AnimateColor.View as AnimateColor
import Link.DimNoUnderline.View as DimNoUnderline
import Link.Route
    exposing
        ( Route
            ( AnimateBackgroundColor
            , AnimateColor
            , DimNoUnderline
            )
        )
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        AnimateBackgroundColor ->
            AnimateBackgroundColor.view

        AnimateColor ->
            AnimateColor.view

        DimNoUnderline ->
            DimNoUnderline.view
