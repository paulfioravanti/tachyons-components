module Footer.View exposing (view)

import Footer.Route
    exposing
        ( Route
            ( CenteredIconsHoverGlow
            , InlineText
            )
        )
import Footer.CenteredIconsHoverGlow.View as CenteredIconsHoverGlow
import Footer.InlineText.View as InlineText
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        CenteredIconsHoverGlow ->
            CenteredIconsHoverGlow.view

        InlineText ->
            InlineText.view
