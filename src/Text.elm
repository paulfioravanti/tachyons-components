module Text
    exposing
        ( Route
        , bodyClasses
        , largeParagraphRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Text.Route as Route exposing (Route)
import Text.Styles as Styles
import Text.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


largeParagraphRoute : Route
largeParagraphRoute =
    Route.LargeParagraph


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
