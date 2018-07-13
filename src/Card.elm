module Card
    exposing
        ( Route
        , albumCenteredRoute
        , albumLeftRoute
        , basicTextCardRoute
        , bodyClasses
        , matchers
        , newsCardRoute
        , productCardRoute
        , sectionContentLinkImageFormatting
        , view
        )

import Card.Route as Route exposing (Route)
import Card.Styles as Styles
import Card.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


albumCenteredRoute : Route
albumCenteredRoute =
    Route.AlbumCentered


albumLeftRoute : Route
albumLeftRoute =
    Route.AlbumLeft


basicTextCardRoute : Route
basicTextCardRoute =
    Route.BasicTextCard


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


newsCardRoute : Route
newsCardRoute =
    Route.NewsCard


productCardRoute : Route
productCardRoute =
    Route.ProductCard


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    Styles.sectionContentLinkImageFormatting route


view : Route -> Html msg
view route =
    View.view route
