module ArticleLists.View exposing (view)

import ArticleLists.Route exposing (Route(TitlePreviewAuthorMediaFlipped))
import ArticleLists.TitlePreviewAuthorMediaFlipped as TitlePreviewAuthorMediaFlipped
import Html exposing (Html)
import Msg exposing (Msg)


view : Route -> Html Msg
view route =
    case route of
        TitlePreviewAuthorMediaFlipped ->
            TitlePreviewAuthorMediaFlipped.view
