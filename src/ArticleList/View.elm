module ArticleList.View exposing (view)

import ArticleList.Route
    exposing
        ( Route
            ( TitlePreviewAuthorMedia
            , TitlePreviewAuthorMediaFlipped
            )
        )
import ArticleList.TitlePreviewAuthorMedia.View as TitlePreviewAuthorMedia
import ArticleList.TitlePreviewAuthorMediaFlipped.View as TitlePreviewAuthorMediaFlipped
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        TitlePreviewAuthorMedia ->
            TitlePreviewAuthorMedia.view

        TitlePreviewAuthorMediaFlipped ->
            TitlePreviewAuthorMediaFlipped.view
