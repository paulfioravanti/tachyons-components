module List_.View exposing (view)

import Html exposing (Html)
import List_.BlockItemDottedBorder.View as BlockItemDottedBorder
import List_.BorderSpaced.View as BorderSpaced
import List_.Route
    exposing
        ( Route
            ( BlockItemDottedBorder
            , BorderSpaced
            )
        )


view : Route -> Html msg
view route =
    case route of
        BlockItemDottedBorder ->
            BlockItemDottedBorder.view

        BorderSpaced ->
            BorderSpaced.view
