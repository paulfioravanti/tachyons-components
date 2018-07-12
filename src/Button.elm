module Button
    exposing
        ( Route
        , basicPreviousNextRoute
        , basicRoundedExtraSmallRoute
        , basicRoundedRoute
        , basicRoundedSmallRoute
        , basicRoute
        , bodyClasses
        , centeredIconsRoute
        , matchers
        , pillGrowRoute
        , sectionContentLinkImageFormatting
        , view
        )

import Button.Route as Route exposing (Route)
import Button.Styles as Styles
import Button.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


basicPreviousNextRoute : Route
basicPreviousNextRoute =
    Route.BasicPreviousNext


basicRoundedExtraSmallRoute : Route
basicRoundedExtraSmallRoute =
    Route.BasicRoundedExtraSmall


basicRoundedRoute : Route
basicRoundedRoute =
    Route.BasicRounded


basicRoundedSmallRoute : Route
basicRoundedSmallRoute =
    Route.BasicRoundedSmall


basicRoute : Route
basicRoute =
    Route.Basic


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


centeredIconsRoute : Route
centeredIconsRoute =
    Route.CenteredIcons


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


pillGrowRoute : Route
pillGrowRoute =
    Route.PillGrow


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
