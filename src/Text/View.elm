module Text.View exposing (view)

import Html exposing (Html)
import Text.LargeParagraph.View as LargeParagraph
import Text.NarrowParagraph.View as NarrowParagraph
import Text.Paragraph.View as Paragraph
import Text.Route
    exposing
        ( Route
            ( LargeParagraph
            , NarrowParagraph
            , Paragraph
            , SmallNarrowParagraph
            )
        )
import Text.SmallNarrowParagraph.View as SmallNarrowParagraph


view : Route -> Html msg
view route =
    case route of
        LargeParagraph ->
            LargeParagraph.view

        NarrowParagraph ->
            NarrowParagraph.view

        Paragraph ->
            Paragraph.view

        SmallNarrowParagraph ->
            SmallNarrowParagraph.view
