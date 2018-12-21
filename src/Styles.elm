module Styles exposing (bodyClasses, centerContent)

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
import Layout
import Link
import List_
import Marketing
import Nav
import Page
import Quote
import Route exposing (Route)
import Table
import Text


bodyClasses : Route -> String
bodyClasses route =
    let
        defaultStyles =
            [ "sans-serif"
            , "w-100"
            ]

        styles =
            case route of
                Route.ArticleLists subRoute ->
                    ArticleList.bodyClasses subRoute

                Route.Articles subRoute ->
                    Article.bodyClasses subRoute

                Route.Avatars subRoute ->
                    Avatar.bodyClasses subRoute

                Route.Banners subRoute ->
                    Banner.bodyClasses subRoute

                Route.Buttons subRoute ->
                    Button.bodyClasses subRoute

                Route.Cards subRoute ->
                    Card.bodyClasses subRoute

                Route.Collections subRoute ->
                    Collection.bodyClasses subRoute

                Route.DefinitionLists subRoute ->
                    DefinitionList.bodyClasses subRoute

                Route.ErrorPages subRoute ->
                    ErrorPage.bodyClasses subRoute

                Route.Footers subRoute ->
                    Footer.bodyClasses subRoute

                Route.Forms subRoute ->
                    Form.bodyClasses subRoute

                Route.Headers subRoute ->
                    Header.bodyClasses subRoute

                Route.Layouts subRoute ->
                    Layout.bodyClasses subRoute

                Route.Links subRoute ->
                    Link.bodyClasses subRoute

                Route.ListComponents ->
                    defaultStyles

                Route.Lists subRoute ->
                    List_.bodyClasses subRoute

                Route.Marketing subRoute ->
                    Marketing.bodyClasses subRoute

                Route.Navs subRoute ->
                    Nav.bodyClasses subRoute

                Route.NotFound ->
                    defaultStyles

                Route.Pages subRoute ->
                    Page.bodyClasses subRoute

                Route.Quotes subRoute ->
                    Quote.bodyClasses subRoute

                Route.Tables subRoute ->
                    Table.bodyClasses subRoute

                Route.Texts subRoute ->
                    Text.bodyClasses subRoute
    in
    styles
        |> String.join " "


centerContent : String
centerContent =
    [ "center"
    , "mw9"
    ]
        |> String.join " "
