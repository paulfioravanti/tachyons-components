module Link.View exposing (view)

import Link.Route exposing (Route(AnimateBackgroundColor))
import Link.AnimateBackgroundColor.View as AnimateBackgroundColor
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        AnimateBackgroundColor ->
            AnimateBackgroundColor.view
