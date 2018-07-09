module Footer.View exposing (view)

import Footer.Route exposing (Route(CenteredIconsHoverGlow))
import Footer.CenteredIconsHoverGlow.View as CenteredIconsHoverGlow
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        CenteredIconsHoverGlow ->
            CenteredIconsHoverGlow.view footer
