module Text exposing
    ( Route
    , bodyClasses
    , largeParagraphRoute
    , matchers
    , narrowParagraphRoute
    , paragraphRoute
    , routeToPath
    , sectionContentLinkImageFormatting
    , smallNarrowParagraphRoute
    , smallParagraphRoute
    , titleSubtitleCenteredRoute
    , view
    , wideParagraphRoute
    )

import Html exposing (Html)
import Text.Route as Route exposing (Route)
import Text.Styles as Styles
import Text.View as View
import Url.Parser exposing (Parser)


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


narrowParagraphRoute : Route
narrowParagraphRoute =
    Route.NarrowParagraph


paragraphRoute : Route
paragraphRoute =
    Route.Paragraph


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


smallNarrowParagraphRoute : Route
smallNarrowParagraphRoute =
    Route.SmallNarrowParagraph


smallParagraphRoute : Route
smallParagraphRoute =
    Route.SmallParagraph


titleSubtitleCenteredRoute : Route
titleSubtitleCenteredRoute =
    Route.TitleSubtitleCentered


view : Route -> Html msg
view route =
    View.view route


wideParagraphRoute : Route
wideParagraphRoute =
    Route.WideParagraph
