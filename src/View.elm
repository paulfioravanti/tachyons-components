module View exposing (view)

import ArticleList.View
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
        )


view : Model -> Html Msg
view model =
    case model of
        ArticleLists articleListRoute ->
            ArticleList.View.view articleListRoute

        ListComponents ->
            ListComponents.view

        NotFound ->
            NotFound.view
