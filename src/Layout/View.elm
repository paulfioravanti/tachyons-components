module Layout.View exposing (view)

import Html exposing (Html)
import Layout.AspectRatio_16x9.View as AspectRatio_16x9
import Layout.AspectRatio_1x1.View as AspectRatio_1x1
import Layout.AspectRatio_3x4.View as AspectRatio_3x4
import Layout.AspectRatio_4x3.View as AspectRatio_4x3
import Layout.AspectRatio_4x6.View as AspectRatio_4x6
import Layout.AspectRatio_5x7.View as AspectRatio_5x7
import Layout.AspectRatio_5x8.View as AspectRatio_5x8
import Layout.AspectRatio_6x4.View as AspectRatio_6x4
import Layout.AspectRatio_7x5.View as AspectRatio_7x5
import Layout.AspectRatio_8x5.View as AspectRatio_8x5
import Layout.AspectRatio_9x16.View as AspectRatio_9x16
import Layout.CenteredContainer.View as CenteredContainer
import Layout.FiveColumn.View as FiveColumn
import Layout.FiveColumnCollapseAlternate.View as FiveColumnCollapseAlternate
import Layout.FiveColumnCollapseAsymmetrical.View as FiveColumnCollapseAsymmetrical
import Layout.FiveColumnCollapseMixed.View as FiveColumnCollapseMixed
import Layout.FiveColumnCollapseOne.View as FiveColumnCollapseOne
import Layout.FixedTableLayoutGrid.View as FixedTableLayoutGrid
import Layout.FixedTableLayoutGridMixedRows.View as FixedTableLayoutGridMixedRows
import Layout.FlagObject.View as FlagObject
import Layout.FlagObjectBottom.View as FlagObjectBottom
import Layout.FlagObjectCollapse.View as FlagObjectCollapse
import Layout.FlagObjectTop.View as FlagObjectTop
import Layout.FourColumn.View as FourColumn
import Layout.FourColumnCollapseTwo.View as FourColumnCollapseTwo
import Layout.FourColumnCollapseTwoCollapseOne.View as FourColumnCollapseTwoCollapseOne
import Layout.FullBleedSquare.View as FullBleedSquare
import Layout.FullBleed_16x9.View as FullBleed_16x9
import Layout.FullBleed_4x6.View as FullBleed_4x6
import Layout.FullBleed_5x7.View as FullBleed_5x7
import Layout.FullBleed_5x8.View as FullBleed_5x8
import Layout.FullBleed_6x4.View as FullBleed_6x4
import Layout.FullBleed_7x5.View as FullBleed_7x5
import Layout.FullBleed_8x5.View as FullBleed_8x5
import Layout.FullBleed_9x16.View as FullBleed_9x16
import Layout.FullScreenCenteredTitle.View as FullScreenCenteredTitle
import Layout.HorizontalAspectRatios.View as HorizontalAspectRatios
import Layout.Route as Route exposing (Route)
import Layout.ThreeColumn.View as ThreeColumn
import Layout.ThreeColumnCollapseOne.View as ThreeColumnCollapseOne
import Layout.TwoColumn.View as TwoColumn
import Layout.TwoColumnCollapseOne.View as TwoColumnCollapseOne


view : Route -> Html msg
view route =
    case route of
        Route.AspectRatio_16x9 ->
            AspectRatio_16x9.view

        Route.AspectRatio_1x1 ->
            AspectRatio_1x1.view

        Route.AspectRatio_3x4 ->
            AspectRatio_3x4.view

        Route.AspectRatio_4x3 ->
            AspectRatio_4x3.view

        Route.AspectRatio_4x6 ->
            AspectRatio_4x6.view

        Route.AspectRatio_5x7 ->
            AspectRatio_5x7.view

        Route.AspectRatio_5x8 ->
            AspectRatio_5x8.view

        Route.AspectRatio_6x4 ->
            AspectRatio_6x4.view

        Route.AspectRatio_7x5 ->
            AspectRatio_7x5.view

        Route.AspectRatio_8x5 ->
            AspectRatio_8x5.view

        Route.AspectRatio_9x16 ->
            AspectRatio_9x16.view

        Route.CenteredContainer ->
            CenteredContainer.view

        Route.FiveColumn ->
            FiveColumn.view

        Route.FiveColumnCollapseAlternate ->
            FiveColumnCollapseAlternate.view

        Route.FiveColumnCollapseAsymmetrical ->
            FiveColumnCollapseAsymmetrical.view

        Route.FiveColumnCollapseMixed ->
            FiveColumnCollapseMixed.view

        Route.FiveColumnCollapseOne ->
            FiveColumnCollapseOne.view

        Route.FixedTableLayoutGridMixedRows ->
            FixedTableLayoutGridMixedRows.view

        Route.FixedTableLayoutGrid ->
            FixedTableLayoutGrid.view

        Route.FlagObject ->
            FlagObject.view

        Route.FlagObjectBottom ->
            FlagObjectBottom.view

        Route.FlagObjectCollapse ->
            FlagObjectCollapse.view

        Route.FlagObjectTop ->
            FlagObjectTop.view

        Route.FourColumn ->
            FourColumn.view

        Route.FourColumnCollapseTwoCollapseOne ->
            FourColumnCollapseTwoCollapseOne.view

        Route.FourColumnCollapseTwo ->
            FourColumnCollapseTwo.view

        Route.FullBleed_16x9 ->
            FullBleed_16x9.view

        Route.FullBleed_4x6 ->
            FullBleed_4x6.view

        Route.FullBleed_5x7 ->
            FullBleed_5x7.view

        Route.FullBleed_5x8 ->
            FullBleed_5x8.view

        Route.FullBleed_6x4 ->
            FullBleed_6x4.view

        Route.FullBleed_7x5 ->
            FullBleed_7x5.view

        Route.FullBleed_8x5 ->
            FullBleed_8x5.view

        Route.FullBleed_9x16 ->
            FullBleed_9x16.view

        Route.FullBleedSquare ->
            FullBleedSquare.view

        Route.FullScreenCenteredTitle ->
            FullScreenCenteredTitle.view

        Route.HorizontalAspectRatios ->
            HorizontalAspectRatios.view

        Route.ThreeColumn ->
            ThreeColumn.view

        Route.ThreeColumnCollapseOne ->
            ThreeColumnCollapseOne.view

        Route.TwoColumn ->
            TwoColumn.view

        Route.TwoColumnCollapseOne ->
            TwoColumnCollapseOne.view
