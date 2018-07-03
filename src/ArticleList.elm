module ArticleList
    exposing
        ( Route
        , bodyClasses
        , matchers
        , titlePreviewAuthorMediaFlippedRoute
        , toPath
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


titlePreviewAuthorMediaFlippedRoute : Route
titlePreviewAuthorMediaFlippedRoute =
    Route.TitlePreviewAuthorMediaFlipped


toPath : Route -> String
toPath route =
    Route.toPath route


view : msg -> Route -> Html msg -> Html msg
view msg route footer =
    View.view msg route footer
