module Link.View exposing (view)

import Html exposing (Html)
import Link.AnimateBackgroundColor.View as AnimateBackgroundColor
import Link.AnimateColor.View as AnimateColor
import Link.DimNoUnderline.View as DimNoUnderline
import Link.Route as Route exposing (Route)
import Link.UnderlineOnHover.View as UnderlineOnHover


view : Route -> Html msg
view route =
    case route of
        Route.AnimateBackgroundColor ->
            AnimateBackgroundColor.view

        Route.AnimateColor ->
            AnimateColor.view

        Route.DimNoUnderline ->
            DimNoUnderline.view

        Route.UnderlineOnHover ->
            UnderlineOnHover.view
