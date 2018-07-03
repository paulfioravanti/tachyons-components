module ArticleList.View exposing (view)

import ArticleList.Route exposing (Route(TitlePreviewAuthorMediaFlipped))
import ArticleList.TitlePreviewAuthorMediaFlipped.View as TitlePreviewAuthorMediaFlipped
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        TitlePreviewAuthorMediaFlipped ->
            TitlePreviewAuthorMediaFlipped.view footer
