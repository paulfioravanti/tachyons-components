module Article exposing
    ( Route
    , bodyClasses
    , featureRoute
    , fullBleedBackgroundRoute
    , headlineTitleTextRoute
    , largeTitleTextRoute
    , leftTitleRoute
    , leftTitleTopBorderRoute
    , matchers
    , photoEssayRoute
    , routeToPath
    , sectionContentLinkImageFormatting
    , singleColumnLargeTitleRoute
    , titleHighlightHeaderCoverRoute
    , titleTextImageRoute
    , titleTextRoute
    , view
    )

import Article.Route as Route exposing (Route)
import Article.Styles as Styles
import Article.View as View
import Html exposing (Html)
import Url.Parser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


featureRoute : Route
featureRoute =
    Route.Feature


fullBleedBackgroundRoute : Route
fullBleedBackgroundRoute =
    Route.FullBleedBackground


headlineTitleTextRoute : Route
headlineTitleTextRoute =
    Route.HeadlineTitleText


largeTitleTextRoute : Route
largeTitleTextRoute =
    Route.LargeTitleText


leftTitleRoute : Route
leftTitleRoute =
    Route.LeftTitle


leftTitleTopBorderRoute : Route
leftTitleTopBorderRoute =
    Route.LeftTitleTopBorder


photoEssayRoute : Route
photoEssayRoute =
    Route.PhotoEssay


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


singleColumnLargeTitleRoute : Route
singleColumnLargeTitleRoute =
    Route.SingleColumnLargeTitle


titleHighlightHeaderCoverRoute : Route
titleHighlightHeaderCoverRoute =
    Route.TitleHighlightHeaderCover


titleTextImageRoute : Route
titleTextImageRoute =
    Route.TitleTextImage


titleTextRoute : Route
titleTextRoute =
    Route.TitleText


view : Route -> Html msg
view route =
    View.view route
