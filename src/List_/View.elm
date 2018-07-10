module List_.View exposing (view)

import List_.Route exposing (Route(BlockItemDottedBorder))
import List_.BlockItemDottedBorder.View as BlockItemDottedBorder
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        BlockItemDottedBorder ->
            BlockItemDottedBorder.view footer
