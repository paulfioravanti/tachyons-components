module ErrorPage exposing
    ( Route
    , bodyClasses
    , fourOhFourRoute
    , matchers
    , routeToPath
    , sectionContentLinkImageFormatting
    , view
    )

import ErrorPage.Route as Route exposing (Route)
import ErrorPage.Styles as Styles
import ErrorPage.View as View
import Html exposing (Html)
import Url.Parser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


fourOhFourRoute : Route
fourOhFourRoute =
    Route.FourOhFour


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
