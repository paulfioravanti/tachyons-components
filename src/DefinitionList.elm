module DefinitionList exposing
    ( Route
    , bodyClasses
    , inlineRoute
    , matchers
    , routeToPath
    , sectionContentLinkImageFormatting
    , simpleRoute
    , view
    )

import DefinitionList.Route as Route exposing (Route)
import DefinitionList.Styles as Styles
import DefinitionList.View as View
import Html exposing (Html)
import Url.Parser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


inlineRoute : Route
inlineRoute =
    Route.Inline


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


simpleRoute : Route
simpleRoute =
    Route.Simple


view : Route -> Html msg
view route =
    View.view route
