module ArticleList.View exposing (view)

import ArticleList.Route exposing (Route(TitlePreviewAuthorMediaFlipped))
import ArticleList.TitlePreviewAuthorMediaFlipped as TitlePreviewAuthorMediaFlipped
import Html exposing (Html)
import Msg exposing (Msg)


view : Route -> Html Msg
view route =
    case route of
        TitlePreviewAuthorMediaFlipped ->
            TitlePreviewAuthorMediaFlipped.view
