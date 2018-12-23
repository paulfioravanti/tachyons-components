module Header exposing
    ( Route
    , bodyClasses
    , circleAvatarTitleSubtitleRoute
    , matchers
    , roundedAvatarTitleSubtitleRoute
    , routeToPath
    , sectionContentLinkImageFormatting
    , startupHeroRoute
    , view
    )

import Header.Route as Route exposing (Route)
import Header.Styles as Styles
import Header.View as View
import Html exposing (Html)
import Url.Parser exposing (Parser)


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


roundedAvatarTitleSubtitleRoute : Route
roundedAvatarTitleSubtitleRoute =
    Route.RoundedAvatarTitleSubtitle


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


startupHeroRoute : Route
startupHeroRoute =
    Route.StartupHero


view : Route -> Html msg
view route =
    View.view route
