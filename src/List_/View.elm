module List_.View exposing (view)

import List_.Route exposing (Route(BlockItemDottedBorder))
import List_.BlockItemDottedBorder.View as BlockItemDottedBorder
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        BlockItemDottedBorder ->
            BlockItemDottedBorder.view
