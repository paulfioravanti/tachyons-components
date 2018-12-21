module View exposing (view)

import Article
import ArticleList
import Avatar
import Banner
import Browser exposing (Document)
import Button
import Card
import Collection
import DefinitionList
import ErrorPage
import Footer
import Form
import Header
import Html exposing (Html, div, main_)
import Layout
import Link
import ListComponents
import List_
import Marketing
import Model exposing (Model)
import Nav
import NotFound
import Page
import PageFooter
import Quote
import Route
import Table
import Text


view : Model -> Document msg
view model =
    let
        title =
            "TACHYONS - Components"

        footer =
            PageFooter.view

        page =
            case model.route of
                Route.ArticleLists subRoute ->
                    ArticleList.view subRoute

                Route.Articles subRoute ->
                    Article.view subRoute

                Route.Avatars subRoute ->
                    Avatar.view subRoute

                Route.Banners subRoute ->
                    Banner.view subRoute

                Route.Buttons subRoute ->
                    Button.view subRoute

                Route.Cards subRoute ->
                    Card.view subRoute

                Route.Collections subRoute ->
                    Collection.view subRoute

                Route.DefinitionLists subRoute ->
                    DefinitionList.view subRoute

                Route.ErrorPages subRoute ->
                    ErrorPage.view subRoute

                Route.Footers subRoute ->
                    Footer.view subRoute

                Route.Forms subRoute ->
                    Form.view subRoute

                Route.Headers subRoute ->
                    Header.view subRoute

                Route.Layouts subRoute ->
                    Layout.view subRoute

                Route.Links subRoute ->
                    Link.view subRoute

                Route.ListComponents ->
                    ListComponents.view footer

                Route.Lists subRoute ->
                    List_.view subRoute

                Route.Marketing subRoute ->
                    Marketing.view subRoute

                Route.Navs subRoute ->
                    Nav.view subRoute

                Route.NotFound ->
                    NotFound.view

                Route.Pages subRoute ->
                    Page.view subRoute

                Route.Quotes subRoute ->
                    Quote.view subRoute

                Route.Tables subRoute ->
                    Table.view subRoute

                Route.Texts subRoute ->
                    Text.view subRoute
    in
    case model.route of
        Route.ListComponents ->
            { title = title, body = [ page ] }

        Route.NotFound ->
            { title = title, body = [ page ] }

        _ ->
            let
                body =
                    [ div []
                        [ main_ []
                            [ page ]
                        , footer
                        ]
                    ]
            in
            { title = title, body = body }
