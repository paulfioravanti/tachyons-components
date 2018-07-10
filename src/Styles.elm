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
import Route
    exposing
        ( Route
            ( ArticleLists
            , Articles
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
            , NotFound
            )
        )


bodyClasses : Route -> String
bodyClasses route =
    let
        defaultStyles =
            [ "sans-serif"
            , "w-100"
            ]

        styles =
            case route of
                ArticleLists subRoute ->
                    ArticleList.bodyClasses subRoute

                Articles subRoute ->
                    Article.bodyClasses subRoute

                Avatars subRoute ->
                    Avatar.bodyClasses subRoute

                Banners subRoute ->
                    Banner.bodyClasses subRoute

                Buttons subRoute ->
                    Button.bodyClasses subRoute

                Cards subRoute ->
                    Card.bodyClasses subRoute

                Collections subRoute ->
                    Collection.bodyClasses subRoute

                DefinitionLists subRoute ->
                    DefinitionList.bodyClasses subRoute

                ErrorPages subRoute ->
                    ErrorPage.bodyClasses subRoute

                Footers subRoute ->
                    Footer.bodyClasses subRoute

                Forms subRoute ->
                    Form.bodyClasses subRoute

                Headers subRoute ->
                    Header.bodyClasses subRoute

                Layouts subRoute ->
                    Layout.bodyClasses subRoute

                Links subRoute ->
                    Link.bodyClasses subRoute

                ListComponents ->
                    defaultStyles

                Lists subRoute ->
                    List_.bodyClasses subRoute

                Marketing subRoute ->
                    Marketing.bodyClasses subRoute

                NotFound ->
                    defaultStyles
    in
        styles
            |> String.join " "


centerContent : String
centerContent =
    [ "center"
    , "mw9"
    ]
        |> String.join " "
