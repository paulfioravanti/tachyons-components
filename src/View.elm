module View exposing (view)

import Article
import ArticleList
import Avatar
import Footer
import Html exposing (Html)
import ListComponents
import Model exposing (Model)
import NotFound
import Route
    exposing
        ( Route
            ( Articles
            , ArticleLists
            , Avatars
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
                ArticleList.view articleListRoute footer

            Articles articleRoute ->
                Article.view articleRoute footer

            Avatars avatarRoute ->
                Avatar.view avatarRoute footer

            ListComponents ->
                ListComponents.view changeLocationMsg footer

            NotFound ->
                NotFound.view
