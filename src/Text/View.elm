module Text.View exposing (view)

import Html exposing (Html)
import Text.LargeParagraph.View as LargeParagraph
import Text.NarrowParagraph.View as NarrowParagraph
import Text.Paragraph.View as Paragraph
import Text.Route as Route exposing (Route)
import Text.SmallNarrowParagraph.View as SmallNarrowParagraph
import Text.SmallParagraph.View as SmallParagraph
import Text.TitleSubtitleCentered.View as TitleSubtitleCentered
import Text.WideParagraph.View as WideParagraph


view : Route -> Html msg
view route =
    case route of
        Route.LargeParagraph ->
            LargeParagraph.view

        Route.NarrowParagraph ->
            NarrowParagraph.view

        Route.Paragraph ->
            Paragraph.view

        Route.SmallNarrowParagraph ->
            SmallNarrowParagraph.view

        Route.SmallParagraph ->
            SmallParagraph.view

        Route.TitleSubtitleCentered ->
            TitleSubtitleCentered.view

        Route.WideParagraph ->
            WideParagraph.view
