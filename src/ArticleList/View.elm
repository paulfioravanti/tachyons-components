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


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        TitlePreviewAuthorMedia ->
            TitlePreviewAuthorMedia.view footer

        TitlePreviewAuthorMediaFlipped ->
            TitlePreviewAuthorMediaFlipped.view footer
