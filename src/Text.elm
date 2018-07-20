module Text
    exposing
        ( Route
        , bodyClasses
        , largeParagraphRoute
        , matchers
        , narrowParagraphRoute
        , paragraphRoute
        , sectionContentLinkImageFormatting
        , smallNarrowParagraphRoute
        , smallParagraphRoute
        , titleSubtitleCenteredRoute
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


narrowParagraphRoute : Route
narrowParagraphRoute =
    Route.NarrowParagraph


paragraphRoute : Route
paragraphRoute =
    Route.Paragraph


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
