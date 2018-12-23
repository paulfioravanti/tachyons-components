module Collection exposing
    ( Route
    , albumsRoute
    , bodyClasses
    , matchers
    , moviesRoute
    , postersDimRoute
    , postersRoute
    , routeToPath
    , sectionContentLinkImageFormatting
    , squareTitleSubtitleRoute
    , view
    , vinylRoute
    )

import Collection.Route as Route exposing (Route)
import Collection.Styles as Styles
import Collection.View as View
import Html exposing (Html)
import Url.Parser exposing (Parser)


type alias Route =
    Route.Route


albumsRoute : Route
albumsRoute =
    Route.Albums


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


moviesRoute : Route
moviesRoute =
    Route.Movies


postersDimRoute : Route
postersDimRoute =
    Route.PostersDim


postersRoute : Route
postersRoute =
    Route.Posters


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


squareTitleSubtitleRoute : Route
squareTitleSubtitleRoute =
    Route.SquareTitleSubtitle


view : Route -> Html msg
view route =
    View.view route


vinylRoute : Route
vinylRoute =
    Route.Vinyl
