module ArticleList exposing
    ( Route
    , bodyClasses
    , matchers
    , routeToPath
    , titlePreviewAuthorMediaFlippedRoute
    , titlePreviewAuthorMediaRoute
    , view
    )

import ArticleList.Route as Route exposing (Route)
import ArticleList.Styles as Styles
import ArticleList.View as View
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


routeToPath : Route -> String
routeToPath route =
    Route.toPath route


titlePreviewAuthorMediaRoute : Route
titlePreviewAuthorMediaRoute =
    Route.TitlePreviewAuthorMedia


titlePreviewAuthorMediaFlippedRoute : Route
titlePreviewAuthorMediaFlippedRoute =
    Route.TitlePreviewAuthorMediaFlipped


view : Route -> Html msg
view route =
    View.view route
