module Table
    exposing
        ( Route
        , basicRoute
        , bodyClasses
        , matchers
        , sectionContentLinkImageFormatting
        , stripedDarkRoute
        , view
        )

import Table.Route as Route exposing (Route)
import Table.Styles as Styles
import Table.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


basicRoute : Route
basicRoute =
    Route.Basic


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


stripedDarkRoute : Route
stripedDarkRoute =
    Route.StripedDark


view : Route -> Html msg
view route =
    View.view route
