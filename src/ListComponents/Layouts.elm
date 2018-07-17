module ListComponents.Layouts exposing (view)

import Layout
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import ListComponents.Styles as Styles
import ListComponents.Utils as Utils
import Route exposing (Route(Layouts))


view : (Route -> msg) -> Html msg
view changeLocationMsg =
    div []
        [ Utils.sectionHeader "Layout"
        , div [ class Styles.sectionContentWrapper ]
            [ div [ class Styles.sectionContent ]
                [ Utils.component
                    "layout/aspect-ratio-16x9/"
                    "Aspect Ratio 16x9"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio16x9Route)
                , Utils.component
                    "layout/aspect-ratio-1x1/"
                    "Aspect Ratio 1x1"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio1x1Route)
                , Utils.component
                    "layout/aspect-ratio-3x4/"
                    "Aspect Ratio 3x4"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio3x4Route)
                , Utils.component
                    "layout/aspect-ratio-4x3/"
                    "Aspect Ratio 4x3"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio4x3Route)
                , Utils.component
                    "layout/aspect-ratio-4x6/"
                    "Aspect Ratio 4x6"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio4x6Route)
                , Utils.component
                    "layout/aspect-ratio-5x7/"
                    "Aspect Ratio 5x7"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio5x7Route)
                , Utils.component
                    "layout/aspect-ratio-5x8/"
                    "Aspect Ratio 5x8"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio5x8Route)
                , Utils.component
                    "layout/aspect-ratio-6x4/"
                    "Aspect Ratio 6x4"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio6x4Route)
                , Utils.component
                    "layout/aspect-ratio-7x5/"
                    "Aspect Ratio 7x5"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio7x5Route)
                , Utils.component
                    "layout/aspect-ratio-8x5/"
                    "Aspect Ratio 8x5"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio8x5Route)
                , Utils.component
                    "layout/aspect-ratio-9x16/"
                    "Aspect Ratio 9x16"
                    changeLocationMsg
                    (Layouts Layout.aspectRatio9x16Route)
                , Utils.component
                    "layout/centered-container/"
                    "Centered Container"
                    changeLocationMsg
                    (Layouts Layout.centeredContainerRoute)
                , Utils.component
                    "layout/five-column-collapse-alternate/"
                    "Five Column Collapse Alternate"
                    changeLocationMsg
                    (Layouts Layout.fiveColumnCollapseAlternateRoute)
                , Utils.component
                    "layout/five-column-collapse-asymmetrical/"
                    "Five Column Collapse Asymmetrical"
                    changeLocationMsg
                    (Layouts Layout.fiveColumnCollapseAsymmetricalRoute)
                , Utils.component
                    "layout/five-column-collapse-mixed/"
                    "Five Column Collapse Mixed"
                    changeLocationMsg
                    (Layouts Layout.fiveColumnCollapseMixedRoute)
                , Utils.component
                    "layout/five-column-collapse-one/"
                    "Five Column Collapse One"
                    changeLocationMsg
                    (Layouts Layout.fiveColumnCollapseOneRoute)
                , Utils.component
                    "layout/five-column/"
                    "Five Column"
                    changeLocationMsg
                    (Layouts Layout.fiveColumnRoute)
                , Utils.component
                    "layout/fixed-table-layout-grid-mixed-rows/"
                    "Fixed Table Layout Mixed Rows"
                    changeLocationMsg
                    (Layouts Layout.fixedTableLayoutGridMixedRowsRoute)
                , Utils.component
                    "layout/fixed-table-layout-grid/"
                    "Fixed Table Layout Grid"
                    changeLocationMsg
                    (Layouts Layout.fixedTableLayoutGridRoute)
                , Utils.component
                    "layout/flag-object-bottom/"
                    "Flag Object Bottom"
                    changeLocationMsg
                    (Layouts Layout.flagObjectBottomRoute)
                , Utils.component
                    "layout/flag-object-collapse/"
                    "Flag Object Collapse"
                    changeLocationMsg
                    (Layouts Layout.flagObjectCollapseRoute)
                , Utils.component
                    "layout/flag-object-top/"
                    "Flag Object Top"
                    changeLocationMsg
                    (Layouts Layout.flagObjectTopRoute)
                , Utils.component
                    "layout/flag-object/"
                    "Flag Object"
                    changeLocationMsg
                    (Layouts Layout.flagObjectRoute)
                ]
            ]
        ]
