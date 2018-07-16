module Layout
    exposing
        ( Route
        , bodyClasses
        , aspectRatio16x9Route
        , aspectRatio1x1Route
        , aspectRatio3x4Route
        , aspectRatio4x3Route
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


aspectRatio1x1Route : Route
aspectRatio1x1Route =
    Route.AspectRatio1x1


aspectRatio3x4Route : Route
aspectRatio3x4Route =
    Route.AspectRatio3x4


aspectRatio4x3Route : Route
aspectRatio4x3Route =
    Route.AspectRatio4x3


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
