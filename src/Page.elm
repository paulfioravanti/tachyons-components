module Page
    exposing
        ( Route
        , bodyClasses
        , doubleRoute
        , fourByFourMixedGridRoute
        , matchers
        , portfolioProjectRoute
        , sectionContentLinkImageFormatting
        , view
        )

import Page.Route as Route exposing (Route)
import Page.Styles as Styles
import Page.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


doubleRoute : Route
doubleRoute =
    Route.Double


fourByFourMixedGridRoute : Route
fourByFourMixedGridRoute =
    Route.FourByFourMixedGrid


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


portfolioProjectRoute : Route
portfolioProjectRoute =
    Route.PortfolioProject


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
