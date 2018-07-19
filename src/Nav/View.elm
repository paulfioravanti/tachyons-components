module Nav.View exposing (view)

import Html exposing (Html)
import Nav.FixedSemiTransparent.View as FixedSemiTransparent
import Nav.LargeTitleLinkList.View as LargeTitleLinkList
import Nav.Route
    exposing
        ( Route
            ( FixedSemiTransparent
            , LargeTitleLinkList
            )
        )


view : Route -> Html msg
view route =
    case route of
        FixedSemiTransparent ->
            FixedSemiTransparent.view

        LargeTitleLinkList ->
            LargeTitleLinkList.view
