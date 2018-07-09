module Header
    exposing
        ( Route
        , bodyClasses
        , circleAvatarTitleSubtitleRoute
        , matchers
        , sectionContentLinkImageFormatting
        , view
        )

import Header.Route as Route exposing (Route)
import Header.Styles as Styles
import Header.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


circleAvatarTitleSubtitleRoute : Route
circleAvatarTitleSubtitleRoute =
    Route.CircleAvatarTitleSubtitle


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg -> Html msg
view route footer =
    View.view route footer
