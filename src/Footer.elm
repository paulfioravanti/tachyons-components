module Footer exposing
    ( Route
    , bodyClasses
    , centeredIconsHoverGlowRoute
    , inlineTextRoute
    , matchers
    , routeToPath
    , sectionContentLinkImageFormatting
    , simpleLargeTypeRoute
    , smallPrintRoute
    , socialCirclesRoute
    , socialRoute
    , socialSimpleRoute
    , socialSimpleTextRoute
    , socialTextRoute
    , studiosRoute
    , view
    )

import Footer.Route as Route exposing (Route)
import Footer.Styles as Styles
import Footer.View as View
import Html exposing (Html)
import Url.Parser exposing (Parser)


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


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


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


socialRoute : Route
socialRoute =
    Route.Social


socialSimpleRoute : Route
socialSimpleRoute =
    Route.SocialSimple


socialSimpleTextRoute : Route
socialSimpleTextRoute =
    Route.SocialSimpleText


socialTextRoute : Route
socialTextRoute =
    Route.SocialText


studiosRoute : Route
studiosRoute =
    Route.Studios


view : Route -> Html msg
view route =
    View.view route
