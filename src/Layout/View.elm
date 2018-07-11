module Layout.View exposing (view)

import Layout.Route exposing (Route(AspectRatio16x9))
import Layout.AspectRatio16x9.View as AspectRatio16x9
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        AspectRatio16x9 ->
            AspectRatio16x9.view
