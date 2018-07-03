module View exposing (view)

import ArticleLists.View
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
            ArticleLists.View.view articleListRoute

        ListComponents ->
            ListComponents.view

        NotFound ->
            NotFound.view
