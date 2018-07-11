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
import Form
import Header
import Html exposing (Html, main_)
import Layout
import Link
import List_
import ListComponents
import Marketing
import Model exposing (Model)
import Nav
import NotFound
import Page
import PageFooter
import Quote
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
            , Footers
            , Forms
            , Headers
            , Layouts
            , Links
            , ListComponents
            , Lists
            , Marketing
            , Navs
            , NotFound
            , Pages
            , Quotes
            , Tables
            , Texts
            )
        )
import Table
import Text


view : (Route -> msg) -> Model -> Html msg
view changeLocationMsg model =
    let
        page =
            case model of
                ArticleLists subRoute ->
                    ArticleList.view subRoute

                Articles subRoute ->
                    Article.view subRoute

                Avatars subRoute ->
                    Avatar.view subRoute

                Banners subRoute ->
                    Banner.view subRoute

                Buttons subRoute ->
                    Button.view subRoute

                Cards subRoute ->
                    Card.view subRoute

                Collections subRoute ->
                    Collection.view subRoute

                DefinitionLists subRoute ->
                    DefinitionList.view subRoute

                ErrorPages subRoute ->
                    ErrorPage.view subRoute

                Footers subRoute ->
                    Footer.view subRoute

                Forms subRoute ->
                    Form.view subRoute

                Headers subRoute ->
                    Header.view subRoute

                Layouts subRoute ->
                    Layout.view subRoute

                Links subRoute ->
                    Link.view subRoute

                ListComponents ->
                    ListComponents.view changeLocationMsg

                Lists subRoute ->
                    List_.view subRoute

                Marketing subRoute ->
                    Marketing.view subRoute

                Navs subRoute ->
                    Nav.view subRoute

                NotFound ->
                    NotFound.view

                Pages subRoute ->
                    Page.view subRoute

                Quotes subRoute ->
                    Quote.view subRoute

                Tables subRoute ->
                    Table.view subRoute

                Texts subRoute ->
                    Text.view subRoute
    in
        main_ []
            [ page
            , PageFooter.view (changeLocationMsg ListComponents)
            ]
