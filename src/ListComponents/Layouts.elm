module ListComponents.Layouts exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Layout
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route


view : Html msg
view =
    div []
        [ Utils.sectionHeader "Layout"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "layout/aspect-ratio-16x9/"
                    "Aspect Ratio 16x9"
                    (Route.Layouts Layout.aspectRatio16x9Route)
                , Utils.component
                    "layout/aspect-ratio-1x1/"
                    "Aspect Ratio 1x1"
                    (Route.Layouts Layout.aspectRatio1x1Route)
                , Utils.component
                    "layout/aspect-ratio-3x4/"
                    "Aspect Ratio 3x4"
                    (Route.Layouts Layout.aspectRatio3x4Route)
                , Utils.component
                    "layout/aspect-ratio-4x3/"
                    "Aspect Ratio 4x3"
                    (Route.Layouts Layout.aspectRatio4x3Route)
                , Utils.component
                    "layout/aspect-ratio-4x6/"
                    "Aspect Ratio 4x6"
                    (Route.Layouts Layout.aspectRatio4x6Route)
                , Utils.component
                    "layout/aspect-ratio-5x7/"
                    "Aspect Ratio 5x7"
                    (Route.Layouts Layout.aspectRatio5x7Route)
                , Utils.component
                    "layout/aspect-ratio-5x8/"
                    "Aspect Ratio 5x8"
                    (Route.Layouts Layout.aspectRatio5x8Route)
                , Utils.component
                    "layout/aspect-ratio-6x4/"
                    "Aspect Ratio 6x4"
                    (Route.Layouts Layout.aspectRatio6x4Route)
                , Utils.component
                    "layout/aspect-ratio-7x5/"
                    "Aspect Ratio 7x5"
                    (Route.Layouts Layout.aspectRatio7x5Route)
                , Utils.component
                    "layout/aspect-ratio-8x5/"
                    "Aspect Ratio 8x5"
                    (Route.Layouts Layout.aspectRatio8x5Route)
                , Utils.component
                    "layout/aspect-ratio-9x16/"
                    "Aspect Ratio 9x16"
                    (Route.Layouts Layout.aspectRatio9x16Route)
                , Utils.component
                    "layout/centered-container/"
                    "Centered Container"
                    (Route.Layouts Layout.centeredContainerRoute)
                , Utils.component
                    "layout/five-column-collapse-alternate/"
                    "Five Column Collapse Alternate"
                    (Route.Layouts Layout.fiveColumnCollapseAlternateRoute)
                , Utils.component
                    "layout/five-column-collapse-asymmetrical/"
                    "Five Column Collapse Asymmetrical"
                    (Route.Layouts Layout.fiveColumnCollapseAsymmetricalRoute)
                , Utils.component
                    "layout/five-column-collapse-mixed/"
                    "Five Column Collapse Mixed"
                    (Route.Layouts Layout.fiveColumnCollapseMixedRoute)
                , Utils.component
                    "layout/five-column-collapse-one/"
                    "Five Column Collapse One"
                    (Route.Layouts Layout.fiveColumnCollapseOneRoute)
                , Utils.component
                    "layout/five-column/"
                    "Five Column"
                    (Route.Layouts Layout.fiveColumnRoute)
                , Utils.component
                    "layout/fixed-table-layout-grid-mixed-rows/"
                    "Fixed Table Layout Mixed Rows"
                    (Route.Layouts Layout.fixedTableLayoutGridMixedRowsRoute)
                , Utils.component
                    "layout/fixed-table-layout-grid/"
                    "Fixed Table Layout Grid"
                    (Route.Layouts Layout.fixedTableLayoutGridRoute)
                , Utils.component
                    "layout/flag-object-bottom/"
                    "Flag Object Bottom"
                    (Route.Layouts Layout.flagObjectBottomRoute)
                , Utils.component
                    "layout/flag-object-collapse/"
                    "Flag Object Collapse"
                    (Route.Layouts Layout.flagObjectCollapseRoute)
                , Utils.component
                    "layout/flag-object-top/"
                    "Flag Object Top"
                    (Route.Layouts Layout.flagObjectTopRoute)
                , Utils.component
                    "layout/flag-object/"
                    "Flag Object"
                    (Route.Layouts Layout.flagObjectRoute)
                , Utils.component
                    "layout/four-column-collapse-two-collapse-one/"
                    "Four Column Collapse Two Collapse One"
                    (Route.Layouts Layout.fourColumnCollapseTwoCollapseOneRoute)
                , Utils.component
                    "layout/four-column-collapse-two/"
                    "Four Column Collapse Two"
                    (Route.Layouts Layout.fourColumnCollapseTwoRoute)
                , Utils.component
                    "layout/four-column/"
                    "Four Column"
                    (Route.Layouts Layout.fourColumnRoute)
                , Utils.component
                    "layout/full-bleed-16x9/"
                    "Full Bleed 16x9"
                    (Route.Layouts Layout.fullBleed16x9Route)
                , Utils.component
                    "layout/full-bleed-4x6/"
                    "Full Bleed 4x6"
                    (Route.Layouts Layout.fullBleed4x6Route)
                , Utils.component
                    "layout/full-bleed-5x7/"
                    "Full Bleed 5x7"
                    (Route.Layouts Layout.fullBleed5x7Route)
                , Utils.component
                    "layout/full-bleed-5x8/"
                    "Full Bleed 5x8"
                    (Route.Layouts Layout.fullBleed5x8Route)
                , Utils.component
                    "layout/full-bleed-6x4/"
                    "Full Bleed 6x4"
                    (Route.Layouts Layout.fullBleed6x4Route)
                , Utils.component
                    "layout/full-bleed-7x5/"
                    "Full Bleed 7x5"
                    (Route.Layouts Layout.fullBleed7x5Route)
                , Utils.component
                    "layout/full-bleed-8x5/"
                    "Full Bleed 8x5"
                    (Route.Layouts Layout.fullBleed8x5Route)
                , Utils.component
                    "layout/full-bleed-9x16/"
                    "Full Bleed 9x16"
                    (Route.Layouts Layout.fullBleed9x16Route)
                , Utils.component
                    "layout/full-bleed-square/"
                    "Full Bleed Square"
                    (Route.Layouts Layout.fullBleedSquareRoute)
                , Utils.component
                    "layout/full-screen-centered-title/"
                    "Full Screen Centered Title"
                    (Route.Layouts Layout.fullScreenCenteredTitleRoute)
                , Utils.component
                    "layout/horizontal-aspect-ratios/"
                    "Horizontal Aspect Ratios"
                    (Route.Layouts Layout.horizontalAspectRatiosRoute)
                , Utils.component
                    "layout/three-column-collapse-one/"
                    "Three Column Collapse One"
                    (Route.Layouts Layout.threeColumnCollapseOneRoute)
                , Utils.component
                    "layout/three-column/"
                    "Three Column"
                    (Route.Layouts Layout.threeColumnRoute)
                , Utils.component
                    "layout/two-column-collapse-one/"
                    "Two Column Collapse One"
                    (Route.Layouts Layout.twoColumnCollapseOneRoute)
                , Utils.component
                    "layout/two-column/"
                    "Two Column"
                    (Route.Layouts Layout.twoColumnRoute)
                ]
            ]
        ]
