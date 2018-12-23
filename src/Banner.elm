module Banner exposing
    ( Route
    , basicRoute
    , bodyClasses
    , infoRoute
    , matchers
    , routeToPath
    , sectionContentLinkImageFormatting
    , singleCtaRoute
    , view
    )

import Banner.Route as Route exposing (Route)
import Banner.Styles as Styles
import Banner.View as View
import Html exposing (Html)
import Url.Parser exposing (Parser)


type alias Route =
    Route.Route


basicRoute : Route
basicRoute =
    Route.Basic


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


infoRoute : Route
infoRoute =
    Route.Info


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


singleCtaRoute : Route
singleCtaRoute =
    Route.SingleCta


view : Route -> Html msg
view route =
    View.view route
