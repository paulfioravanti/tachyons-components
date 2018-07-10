module ListComponents.Styles
    exposing
        ( anchor
        , header
        , headerContent
        , main_
        , mainHeader
        , nav
        , navLink
        , sectionContent
        , sectionContentLink
        , sectionContentLinkContent
        , sectionContentLinkImage
        , sectionContentTitle
        , sectionContentWrapper
        , sectionHeader
        , sectionTitle
        , title
        , titleLink
        , versionNumber
        , versionNumberWrapper
        )

import Article
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
            , Navs
            , NotFound
            , Pages
            , Quotes
            , Tables
            , Texts
            )
        )
import Styles
import Table
import Text


anchor : String
anchor =
    [ "b"
    , "black-70"
    , "dib"
    , "f6"
    , "fw6"
    , "hover-blue"
    , "link"
    , "mb3"
    , "mr3"
    , "pb1"
    , "ttc"
    ]
        |> String.join " "


header : String
header =
    [ "bg-white"
    , "pa3"
    , "ph5-ns"
    , "w-100"
    ]
        |> String.join " "


headerContent : String
headerContent =
    [ "db"
    , "dt-ns"
    , "w-100"
    ]
        |> String.join " "
        |> (++) Styles.centerContent


main_ : String
main_ =
    [ "bg-white"
    , "black-70"
    ]
        |> String.join " "


mainHeader : String
mainHeader =
    [ "b--black-10"
    , "bb"
    , "bt"
    , "mb4"
    , "ph3 ph5-ns"
    , "pt3"
    ]
        |> String.join " "


nav : String
nav =
    [ "db"
    , "dtc-ns"
    , "mt2 mt0-ns"
    , "tl tr-ns"
    , "v-mid"
    , "w-100"
    ]
        |> String.join " "


navLink : String
navLink =
    [ "black-70"
    , "dib"
    , "f6"
    , "fw6"
    , "hover-blue"
    , "link"
    , "mr2 mr3-m mr4-l"
    ]
        |> String.join " "


sectionContent : String
sectionContent =
    Styles.centerContent ++ " cf"


sectionContentLink : String
sectionContentLink =
    [ "black-70"
    , "border-box"
    , "db"
    , "fl"
    , "link"
    , "pb2"
    , "pointer"
    , "pr2"
    , "underline-hover"
    , "w-50 w-25-l"
    , "w-third-m"
    ]
        |> String.join " "


sectionContentLinkContent : String
sectionContentLinkContent =
    [ "aspect-ratio"
    , "aspect-ratio--4x3"
    , "ba"
    , "b--black-20"
    ]
        |> String.join " "


sectionContentLinkImage : Route -> String
sectionContentLinkImage route =
    let
        defaultFormatting =
            [ "cover"
            , "bg-center"
            ]

        imageFormatting =
            case route of
                ArticleLists _ ->
                    defaultFormatting

                Articles subRoute ->
                    Article.sectionContentLinkImageFormatting subRoute

                Avatars _ ->
                    [ "bg-center" ]

                Banners subRoute ->
                    Banner.sectionContentLinkImageFormatting subRoute

                Buttons subRoute ->
                    Button.sectionContentLinkImageFormatting subRoute

                Cards subRoute ->
                    Card.sectionContentLinkImageFormatting subRoute

                Collections subRoute ->
                    Collection.sectionContentLinkImageFormatting subRoute

                DefinitionLists subRoute ->
                    DefinitionList.sectionContentLinkImageFormatting subRoute

                ErrorPages subRoute ->
                    ErrorPage.sectionContentLinkImageFormatting subRoute

                Footers subRoute ->
                    Footer.sectionContentLinkImageFormatting subRoute

                Forms subRoute ->
                    Form.sectionContentLinkImageFormatting subRoute

                Headers subRoute ->
                    Header.sectionContentLinkImageFormatting subRoute

                Layouts subRoute ->
                    Layout.sectionContentLinkImageFormatting subRoute

                Links subRoute ->
                    Link.sectionContentLinkImageFormatting subRoute

                ListComponents ->
                    defaultFormatting

                Lists subRoute ->
                    List_.sectionContentLinkImageFormatting subRoute

                Marketing subRoute ->
                    Marketing.sectionContentLinkImageFormatting subRoute

                Navs subRoute ->
                    Nav.sectionContentLinkImageFormatting subRoute

                NotFound ->
                    defaultFormatting

                Pages subRoute ->
                    Page.sectionContentLinkImageFormatting subRoute

                Quotes subRoute ->
                    Quote.sectionContentLinkImageFormatting subRoute

                Tables subRoute ->
                    Table.sectionContentLinkImageFormatting subRoute

                Texts subRoute ->
                    Text.sectionContentLinkImageFormatting subRoute
    in
        imageFormatting
            ++ [ "aspect-ratio--object"
               , "lazyload"
               ]
            |> String.join " "


sectionContentTitle : String
sectionContentTitle =
    [ "f6"
    , "truncate"
    ]
        |> String.join " "


sectionContentWrapper : String
sectionContentWrapper =
    [ "mb5"
    , "ph3 ph5-ns"
    ]
        |> String.join " "


sectionHeader : String
sectionHeader =
    "ph3 ph5-ns"


sectionTitle : String
sectionTitle =
    [ "b--black-10"
    , "bb"
    , "black-70"
    , "f5"
    , "fw6"
    , "pb2"
    , "ttc"
    ]
        |> String.join " "


title : String
title =
    [ "db"
    , "dtc-ns"
    , "tl"
    , "v-mid"
    , "w-50"
    ]
        |> String.join " "


titleLink : String
titleLink =
    [ "black-70"
    , "dib"
    , "f5 f4-ns"
    , "fw6"
    , "link"
    , "mb1"
    , "mt0"
    , "v-mid"
    ]
        |> String.join " "


versionNumber : String
versionNumber =
    [ "black-70"
    , "nowrap"
    , "f6"
    , "fw2"
    , "mt2 mt3-ns"
    , "pr2"
    ]
        |> String.join " "


versionNumberWrapper : String
versionNumberWrapper =
    "dib"
