module View exposing (view)

import ArticleList.View
import Html exposing (Html)
import ListComponents
import Model exposing (Model)
import NotFound
import Route
    exposing
        ( Route
            ( ArticleLists
            , ListComponents
            , NotFound
            )
        )


view : (Route -> msg) -> Model -> Html msg
view changeLocationMsg model =
    case model of
        ArticleLists articleListRoute ->
            ArticleList.View.view
                (changeLocationMsg ListComponents)
                articleListRoute

        ListComponents ->
            ListComponents.view
                (changeLocationMsg ListComponents)
                changeLocationMsg

        NotFound ->
            NotFound.view
