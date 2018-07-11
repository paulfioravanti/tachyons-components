module Quote
    exposing
        ( Route
        , bodyClasses
        , leftBorderRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Quote.Route as Route exposing (Route)
import Quote.Styles as Styles
import Quote.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


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


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
