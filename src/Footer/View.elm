module Footer.View exposing (view)

import Footer.Route
    exposing
        ( Route
            ( CenteredIconsHoverGlow
            , InlineText
            , SimpleLargeType
            , SmallPrint
            )
        )
import Footer.CenteredIconsHoverGlow.View as CenteredIconsHoverGlow
import Footer.InlineText.View as InlineText
import Footer.SimpleLargeType.View as SimpleLargeType
import Footer.SmallPrint.View as SmallPrint
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        CenteredIconsHoverGlow ->
            CenteredIconsHoverGlow.view

        InlineText ->
            InlineText.view

        SimpleLargeType ->
            SimpleLargeType.view

        SmallPrint ->
            SmallPrint.view
