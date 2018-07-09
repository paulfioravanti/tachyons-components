module Layout
    exposing
        ( Route
        , bodyClasses
        , aspectRatio16x9Route
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Layout.Route as Route exposing (Route)
import Layout.Styles as Styles
import Layout.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


aspectRatio16x9Route : Route
aspectRatio16x9Route =
    Route.AspectRatio16x9


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
