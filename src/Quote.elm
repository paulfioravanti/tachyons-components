module Quote exposing
    ( Route
    , bodyClasses
    , leftBorderRoute
    , matchers
    , pullQuoteRoute
    , routeToPath
    , sectionContentLinkImageFormatting
    , view
    )

import Html exposing (Html)
import Quote.Route as Route exposing (Route)
import Quote.Styles as Styles
import Quote.View as View
import Url.Parser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


leftBorderRoute : Route
leftBorderRoute =
    Route.LeftBorder


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


pullQuoteRoute : Route
pullQuoteRoute =
    Route.PullQuote


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
