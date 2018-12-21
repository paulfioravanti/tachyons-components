module ArticleList.View exposing (view)

import ArticleList.Route as Route exposing (Route)
import ArticleList.TitlePreviewAuthorMedia.View as TitlePreviewAuthorMedia
import ArticleList.TitlePreviewAuthorMediaFlipped.View as TitlePreviewAuthorMediaFlipped
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.TitlePreviewAuthorMedia ->
            TitlePreviewAuthorMedia.view

        Route.TitlePreviewAuthorMediaFlipped ->
            TitlePreviewAuthorMediaFlipped.view
