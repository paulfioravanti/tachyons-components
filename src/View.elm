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
import Html exposing (Html)
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
        footer =
            PageFooter.view (changeLocationMsg ListComponents)
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

            Footers subRoute ->
                Footer.view subRoute footer

            Forms subRoute ->
                Form.view subRoute footer

            Headers subRoute ->
                Header.view subRoute footer

            Layouts subRoute ->
                Layout.view subRoute footer

            Links subRoute ->
                Link.view subRoute footer

            ListComponents ->
                ListComponents.view changeLocationMsg footer

            Lists subRoute ->
                List_.view subRoute footer

            Marketing subRoute ->
                Marketing.view subRoute footer

            Navs subRoute ->
                Nav.view subRoute footer

            NotFound ->
                NotFound.view

            Pages subRoute ->
                Page.view subRoute footer

            Quotes subRoute ->
                Quote.view subRoute footer

            Tables subRoute ->
                Table.view subRoute footer

            Texts subRoute ->
                Text.view subRoute footer
