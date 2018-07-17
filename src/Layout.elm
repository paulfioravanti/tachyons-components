module Layout
    exposing
        ( Route
        , aspectRatio16x9Route
        , aspectRatio1x1Route
        , aspectRatio3x4Route
        , aspectRatio4x3Route
        , aspectRatio4x6Route
        , aspectRatio5x7Route
        , aspectRatio5x8Route
        , aspectRatio6x4Route
        , aspectRatio7x5Route
        , aspectRatio8x5Route
        , aspectRatio9x16Route
        , bodyClasses
        , centeredContainerRoute
        , fiveColumnCollapseAlternateRoute
        , fiveColumnCollapseAsymmetricalRoute
        , fiveColumnCollapseMixedRoute
        , fiveColumnCollapseOneRoute
        , fiveColumnRoute
        , fixedTableLayoutGridMixedRowsRoute
        , fixedTableLayoutGridRoute
        , flagObjectBottomRoute
        , flagObjectCollapseRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Layout.Route as Route exposing (Route)
import Layout.Styles as Styles
import Layout.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


aspectRatio16x9Route : Route
aspectRatio16x9Route =
    Route.AspectRatio16x9


aspectRatio1x1Route : Route
aspectRatio1x1Route =
    Route.AspectRatio1x1


aspectRatio3x4Route : Route
aspectRatio3x4Route =
    Route.AspectRatio3x4


aspectRatio4x3Route : Route
aspectRatio4x3Route =
    Route.AspectRatio4x3


aspectRatio4x6Route : Route
aspectRatio4x6Route =
    Route.AspectRatio4x6


aspectRatio5x7Route : Route
aspectRatio5x7Route =
    Route.AspectRatio5x7


aspectRatio5x8Route : Route
aspectRatio5x8Route =
    Route.AspectRatio5x8


aspectRatio6x4Route : Route
aspectRatio6x4Route =
    Route.AspectRatio6x4


aspectRatio7x5Route : Route
aspectRatio7x5Route =
    Route.AspectRatio7x5


aspectRatio8x5Route : Route
aspectRatio8x5Route =
    Route.AspectRatio8x5


aspectRatio9x16Route : Route
aspectRatio9x16Route =
    Route.AspectRatio9x16


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


centeredContainerRoute : Route
centeredContainerRoute =
    Route.CenteredContainer


fiveColumnCollapseAlternateRoute : Route
fiveColumnCollapseAlternateRoute =
    Route.FiveColumnCollapseAlternate


fiveColumnCollapseAsymmetricalRoute : Route
fiveColumnCollapseAsymmetricalRoute =
    Route.FiveColumnCollapseAsymmetrical


fiveColumnCollapseMixedRoute : Route
fiveColumnCollapseMixedRoute =
    Route.FiveColumnCollapseMixed


fiveColumnCollapseOneRoute : Route
fiveColumnCollapseOneRoute =
    Route.FiveColumnCollapseOne


fiveColumnRoute : Route
fiveColumnRoute =
    Route.FiveColumn


fixedTableLayoutGridMixedRowsRoute : Route
fixedTableLayoutGridMixedRowsRoute =
    Route.FixedTableLayoutGridMixedRows


fixedTableLayoutGridRoute : Route
fixedTableLayoutGridRoute =
    Route.FixedTableLayoutGrid


flagObjectBottomRoute : Route
flagObjectBottomRoute =
    Route.FlagObjectBottom


flagObjectCollapseRoute : Route
flagObjectCollapseRoute =
    Route.FlagObjectCollapse


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
