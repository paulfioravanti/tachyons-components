module Collection
    exposing
        ( Route
        , albumsRoute
        , bodyClasses
        , matchers
        , moviesRoute
        , sectionContentLinkImageFormatting
        , view
        )

import Collection.Route as Route exposing (Route)
import Collection.Styles as Styles
import Collection.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


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


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
