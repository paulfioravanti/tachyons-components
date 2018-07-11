module Footer
    exposing
        ( Route
        , bodyClasses
        , centeredIconsHoverGlowRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Footer.Route as Route exposing (Route)
import Footer.Styles as Styles
import Footer.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


centeredIconsHoverGlowRoute : Route
centeredIconsHoverGlowRoute =
    Route.CenteredIconsHoverGlow


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
