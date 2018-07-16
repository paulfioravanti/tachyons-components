module Footer
    exposing
        ( Route
        , bodyClasses
        , centeredIconsHoverGlowRoute
        , inlineTextRoute
        , matchers
        , sectionContentLinkImageFormatting
        , simpleLargeTypeRoute
        , smallPrintRoute
        , socialCirclesRoute
        , socialSimpleRoute
        , socialSimpleTextRoute
        , socialTextRoute
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


inlineTextRoute : Route
inlineTextRoute =
    Route.InlineText


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


simpleLargeTypeRoute : Route
simpleLargeTypeRoute =
    Route.SimpleLargeType


smallPrintRoute : Route
smallPrintRoute =
    Route.SmallPrint


socialCirclesRoute : Route
socialCirclesRoute =
    Route.SocialCircles


socialSimpleRoute : Route
socialSimpleRoute =
    Route.SocialSimple


socialSimpleTextRoute : Route
socialSimpleTextRoute =
    Route.SocialSimpleText


socialTextRoute : Route
socialTextRoute =
    Route.SocialText


view : Route -> Html msg
view route =
    View.view route
