module Nav.View exposing (view)

import Nav.Route exposing (Route(FixedSemiTransparent))
import Nav.FixedSemiTransparent.View as FixedSemiTransparent
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        FixedSemiTransparent ->
            FixedSemiTransparent.view footer
