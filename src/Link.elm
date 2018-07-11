module Link
    exposing
        ( Route
        , animateBackgroundColorRoute
        , bodyClasses
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Link.Route as Route exposing (Route)
import Link.Styles as Styles
import Link.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


animateBackgroundColorRoute : Route
animateBackgroundColorRoute =
    Route.AnimateBackgroundColor


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