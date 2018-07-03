module ArticleList.View exposing (view)

import ArticleList.Route exposing (Route(TitlePreviewAuthorMediaFlipped))
import ArticleList.TitlePreviewAuthorMediaFlipped as TitlePreviewAuthorMediaFlipped
import Html exposing (Html)


view : msg -> Route -> Html msg
view msg route =
    case route of
        TitlePreviewAuthorMediaFlipped ->
            TitlePreviewAuthorMediaFlipped.view msg
