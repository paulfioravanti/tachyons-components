module View exposing (view)

import Article
import ArticleList
import Avatar
import Banner
import Button
import Card
import Collection
import DefinitionList
import ErrorPage
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
            , Banners
            , Buttons
            , Cards
            , Collections
            , DefinitionLists
            , ErrorPages
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
            ArticleLists subRoute ->
                ArticleList.view subRoute footer

            Articles subRoute ->
                Article.view subRoute footer

            Avatars subRoute ->
                Avatar.view subRoute footer

            Banners subRoute ->
                Banner.view subRoute footer

            Buttons subRoute ->
                Button.view subRoute footer

            Cards subRoute ->
                Card.view subRoute footer

            Collections subRoute ->
                Collection.view subRoute footer

            DefinitionLists subRoute ->
                DefinitionList.view subRoute footer

            ErrorPages subRoute ->
                ErrorPage.view subRoute footer

            ListComponents ->
                ListComponents.view changeLocationMsg footer

            NotFound ->
                NotFound.view
