module View exposing (view)

import ArticleLists.TitlePreviewAuthorMediaFlipped
import Html exposing (Html)
import ListComponents
import Model exposing (Model)
import Msg exposing (Msg)
import NotFound
import Route
    exposing
        ( Route
            ( ArticleLists
            , ListComponents
            , NotFound
            )
        , ArticleListRoute(TitlePreviewAuthorMediaFlipped)
        )


view : Model -> Html Msg
view model =
    case model of
        ArticleLists TitlePreviewAuthorMediaFlipped ->
            ArticleLists.TitlePreviewAuthorMediaFlipped.view

        ListComponents ->
            ListComponents.view

        NotFound ->
            NotFound.view
