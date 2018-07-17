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
        , flagObjectRoute
        , flagObjectTopRoute
        , fourColumnCollapseTwoCollapseOneRoute
        , fourColumnCollapseTwoRoute
        , fourColumnRoute
        , fullBleed16x9Route
        , fullBleed4x6Route
        , fullBleed5x7Route
        , fullBleed5x8Route
        , fullBleed6x4Route
        , fullBleed7x5Route
        , fullBleed8x5Route
        , fullBleed9x16Route
        , fullBleedSquareRoute
        , fullScreenCenteredTitleRoute
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
    Route.AspectRatio_16x9


aspectRatio1x1Route : Route
aspectRatio1x1Route =
    Route.AspectRatio_1x1


aspectRatio3x4Route : Route
aspectRatio3x4Route =
    Route.AspectRatio_3x4


aspectRatio4x3Route : Route
aspectRatio4x3Route =
    Route.AspectRatio_4x3


aspectRatio4x6Route : Route
aspectRatio4x6Route =
    Route.AspectRatio_4x6


aspectRatio5x7Route : Route
aspectRatio5x7Route =
    Route.AspectRatio_5x7


aspectRatio5x8Route : Route
aspectRatio5x8Route =
    Route.AspectRatio_5x8


aspectRatio6x4Route : Route
aspectRatio6x4Route =
    Route.AspectRatio_6x4


aspectRatio7x5Route : Route
aspectRatio7x5Route =
    Route.AspectRatio_7x5


aspectRatio8x5Route : Route
aspectRatio8x5Route =
    Route.AspectRatio_8x5


aspectRatio9x16Route : Route
aspectRatio9x16Route =
    Route.AspectRatio_9x16


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


flagObjectRoute : Route
flagObjectRoute =
    Route.FlagObject


flagObjectTopRoute : Route
flagObjectTopRoute =
    Route.FlagObjectTop


fourColumnCollapseTwoCollapseOneRoute : Route
fourColumnCollapseTwoCollapseOneRoute =
    Route.FourColumnCollapseTwoCollapseOne


fourColumnCollapseTwoRoute : Route
fourColumnCollapseTwoRoute =
    Route.FourColumnCollapseTwo


fourColumnRoute : Route
fourColumnRoute =
    Route.FourColumn


fullBleed16x9Route : Route
fullBleed16x9Route =
    Route.FullBleed_16x9


fullBleed4x6Route : Route
fullBleed4x6Route =
    Route.FullBleed_4x6


fullBleed5x7Route : Route
fullBleed5x7Route =
    Route.FullBleed_5x7


fullBleed5x8Route : Route
fullBleed5x8Route =
    Route.FullBleed_5x8


fullBleed6x4Route : Route
fullBleed6x4Route =
    Route.FullBleed_6x4


fullBleed7x5Route : Route
fullBleed7x5Route =
    Route.FullBleed_7x5


fullBleed8x5Route : Route
fullBleed8x5Route =
    Route.FullBleed_8x5


fullBleed9x16Route : Route
fullBleed9x16Route =
    Route.FullBleed_9x16


fullBleedSquareRoute : Route
fullBleedSquareRoute =
    Route.FullBleedSquare


fullScreenCenteredTitleRoute : Route
fullScreenCenteredTitleRoute =
    Route.FullScreenCenteredTitle


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
