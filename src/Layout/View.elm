module Layout.View exposing (view)

import Html exposing (Html)
import Layout.Route
    exposing
        ( Route
            ( AspectRatio_16x9
            , AspectRatio_1x1
            , AspectRatio_3x4
            , AspectRatio_4x3
            , AspectRatio_4x6
            , AspectRatio_5x7
            , AspectRatio_5x8
            , AspectRatio_6x4
            , AspectRatio_7x5
            , AspectRatio_8x5
            , AspectRatio_9x16
            , CenteredContainer
            , FiveColumn
            , FiveColumnCollapseAlternate
            , FiveColumnCollapseAsymmetrical
            , FiveColumnCollapseMixed
            , FiveColumnCollapseOne
            , FixedTableLayoutGridMixedRows
            , FixedTableLayoutGrid
            , FlagObject
            , FlagObjectBottom
            , FlagObjectCollapse
            , FlagObjectTop
            , FourColumn
            , FourColumnCollapseTwo
            , FourColumnCollapseTwoCollapseOne
            , FullBleed_16x9
            , FullBleed_4x6
            , FullBleed_5x7
            , FullBleed_5x8
            , FullBleed_6x4
            , FullBleed_7x5
            , FullBleed_8x5
            , FullBleed_9x16
            , FullBleedSquare
            , FullScreenCenteredTitle
            )
        )
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
import Layout.FixedTableLayoutGridMixedRows.View as FixedTableLayoutGridMixedRows
import Layout.FixedTableLayoutGrid.View as FixedTableLayoutGrid
import Layout.FlagObject.View as FlagObject
import Layout.FlagObjectBottom.View as FlagObjectBottom
import Layout.FlagObjectCollapse.View as FlagObjectCollapse
import Layout.FlagObjectTop.View as FlagObjectTop
import Layout.FourColumn.View as FourColumn
import Layout.FourColumnCollapseTwo.View as FourColumnCollapseTwo
import Layout.FourColumnCollapseTwoCollapseOne.View as FourColumnCollapseTwoCollapseOne
import Layout.FullBleed_16x9.View as FullBleed_16x9
import Layout.FullBleed_4x6.View as FullBleed_4x6
import Layout.FullBleed_5x7.View as FullBleed_5x7
import Layout.FullBleed_5x8.View as FullBleed_5x8
import Layout.FullBleed_6x4.View as FullBleed_6x4
import Layout.FullBleed_7x5.View as FullBleed_7x5
import Layout.FullBleed_8x5.View as FullBleed_8x5
import Layout.FullBleed_9x16.View as FullBleed_9x16
import Layout.FullBleedSquare.View as FullBleedSquare
import Layout.FullScreenCenteredTitle.View as FullScreenCenteredTitle


view : Route -> Html msg
view route =
    case route of
        AspectRatio_16x9 ->
            AspectRatio_16x9.view

        AspectRatio_1x1 ->
            AspectRatio_1x1.view

        AspectRatio_3x4 ->
            AspectRatio_3x4.view

        AspectRatio_4x3 ->
            AspectRatio_4x3.view

        AspectRatio_4x6 ->
            AspectRatio_4x6.view

        AspectRatio_5x7 ->
            AspectRatio_5x7.view

        AspectRatio_5x8 ->
            AspectRatio_5x8.view

        AspectRatio_6x4 ->
            AspectRatio_6x4.view

        AspectRatio_7x5 ->
            AspectRatio_7x5.view

        AspectRatio_8x5 ->
            AspectRatio_8x5.view

        AspectRatio_9x16 ->
            AspectRatio_9x16.view

        CenteredContainer ->
            CenteredContainer.view

        FiveColumn ->
            FiveColumn.view

        FiveColumnCollapseAlternate ->
            FiveColumnCollapseAlternate.view

        FiveColumnCollapseAsymmetrical ->
            FiveColumnCollapseAsymmetrical.view

        FiveColumnCollapseMixed ->
            FiveColumnCollapseMixed.view

        FiveColumnCollapseOne ->
            FiveColumnCollapseOne.view

        FixedTableLayoutGridMixedRows ->
            FixedTableLayoutGridMixedRows.view

        FixedTableLayoutGrid ->
            FixedTableLayoutGrid.view

        FlagObject ->
            FlagObject.view

        FlagObjectBottom ->
            FlagObjectBottom.view

        FlagObjectCollapse ->
            FlagObjectCollapse.view

        FlagObjectTop ->
            FlagObjectTop.view

        FourColumn ->
            FourColumn.view

        FourColumnCollapseTwoCollapseOne ->
            FourColumnCollapseTwoCollapseOne.view

        FourColumnCollapseTwo ->
            FourColumnCollapseTwo.view

        FullBleed_16x9 ->
            FullBleed_16x9.view

        FullBleed_4x6 ->
            FullBleed_4x6.view

        FullBleed_5x7 ->
            FullBleed_5x7.view

        FullBleed_5x8 ->
            FullBleed_5x8.view

        FullBleed_6x4 ->
            FullBleed_6x4.view

        FullBleed_7x5 ->
            FullBleed_7x5.view

        FullBleed_8x5 ->
            FullBleed_8x5.view

        FullBleed_9x16 ->
            FullBleed_9x16.view

        FullBleedSquare ->
            FullBleedSquare.view

        FullScreenCenteredTitle ->
            FullScreenCenteredTitle.view
