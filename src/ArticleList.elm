module ArticleList
    exposing
        ( Route
        , bodyClasses
        , matchers
        , titlePreviewAuthorMediaRoute
        , titlePreviewAuthorMediaFlippedRoute
        , view
        )

import ArticleList.Route as Route exposing (Route)
import ArticleList.Styles as Styles
import ArticleList.View as View
import Html exposing (Html)
import UrlParser exposing (Parser)


type alias Route =
    Route.Route


bodyClasses : Route -> List String
bodyClasses route =
    Styles.bodyClasses route


matchers : Parser (Route -> a) a
matchers =
    Route.matchers


titlePreviewAuthorMediaRoute : Route
titlePreviewAuthorMediaRoute =
    Route.TitlePreviewAuthorMedia


titlePreviewAuthorMediaFlippedRoute : Route
titlePreviewAuthorMediaFlippedRoute =
    Route.TitlePreviewAuthorMediaFlipped


view : Route -> Html msg
view route =
    View.view route
