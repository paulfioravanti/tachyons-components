module Nav
    exposing
        ( Route
        , bodyClasses
        , fixedSemiTransparentRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Nav.Route as Route exposing (Route)
import Nav.Styles as Styles
import Nav.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


fixedSemiTransparentRoute : Route
fixedSemiTransparentRoute =
    Route.FixedSemiTransparent


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
