module Text.View exposing (view)

import Html exposing (Html)
import Text.LargeParagraph.View as LargeParagraph
import Text.NarrowParagraph.View as NarrowParagraph
import Text.Route
    exposing
        ( Route
            ( LargeParagraph
            , NarrowParagraph
            )
        )


view : Route -> Html msg
view route =
    case route of
        LargeParagraph ->
            LargeParagraph.view

        NarrowParagraph ->
            NarrowParagraph.view
