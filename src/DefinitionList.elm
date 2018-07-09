module DefinitionList
    exposing
        ( Route
        , bodyClasses
        , inlineRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import DefinitionList.Route as Route exposing (Route)
import DefinitionList.Styles as Styles
import DefinitionList.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


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


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
