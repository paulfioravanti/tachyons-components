module Layout.View exposing (view)

import Layout.Route
    exposing
        ( Route
            ( AspectRatio16x9
            , AspectRatio1x1
            , AspectRatio3x4
            , AspectRatio4x3
            , AspectRatio4x6
            , AspectRatio5x7
            , AspectRatio5x8
            , AspectRatio6x4
            , AspectRatio7x5
            , AspectRatio8x5
            , AspectRatio9x16
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
            )
        )
import Layout.AspectRatio16x9.View as AspectRatio16x9
import Layout.AspectRatio1x1.View as AspectRatio1x1
import Layout.AspectRatio3x4.View as AspectRatio3x4
import Layout.AspectRatio4x3.View as AspectRatio4x3
import Layout.AspectRatio4x6.View as AspectRatio4x6
import Layout.AspectRatio5x7.View as AspectRatio5x7
import Layout.AspectRatio5x8.View as AspectRatio5x8
import Layout.AspectRatio6x4.View as AspectRatio6x4
import Layout.AspectRatio7x5.View as AspectRatio7x5
import Layout.AspectRatio8x5.View as AspectRatio8x5
import Layout.AspectRatio9x16.View as AspectRatio9x16
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
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        AspectRatio16x9 ->
            AspectRatio16x9.view

        AspectRatio1x1 ->
            AspectRatio1x1.view

        AspectRatio3x4 ->
            AspectRatio3x4.view

        AspectRatio4x3 ->
            AspectRatio4x3.view

        AspectRatio4x6 ->
            AspectRatio4x6.view

        AspectRatio5x7 ->
            AspectRatio5x7.view

        AspectRatio5x8 ->
            AspectRatio5x8.view

        AspectRatio6x4 ->
            AspectRatio6x4.view

        AspectRatio7x5 ->
            AspectRatio7x5.view

        AspectRatio8x5 ->
            AspectRatio8x5.view

        AspectRatio9x16 ->
            AspectRatio9x16.view

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
