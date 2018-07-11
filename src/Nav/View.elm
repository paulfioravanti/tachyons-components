module Nav.View exposing (view)

import Nav.Route exposing (Route(FixedSemiTransparent))
import Nav.FixedSemiTransparent.View as FixedSemiTransparent
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        FixedSemiTransparent ->
            FixedSemiTransparent.view
