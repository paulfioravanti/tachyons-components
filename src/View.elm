module View exposing (view)

import ArticleList
import Footer
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
    let
        footer =
            Footer.view (changeLocationMsg ListComponents)
    in
        case model of
            ArticleLists articleListRoute ->
                ArticleList.view
                    (changeLocationMsg ListComponents)
                    articleListRoute
                    footer

            ListComponents ->
                ListComponents.view
                    (changeLocationMsg ListComponents)
                    changeLocationMsg
                    footer

            NotFound ->
                NotFound.view
