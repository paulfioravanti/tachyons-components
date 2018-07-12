module Button
    exposing
        ( Route
        , basicPreviousNextRoute
        , basicRoundedExtraSmallRoute
        , bodyClasses
        , matchers
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


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
