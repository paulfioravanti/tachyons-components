module Route exposing (Route(..), fromUrl, toPath)

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
import Table
import Text
import Url exposing (Url)
import Url.Parser exposing ((</>), Parser, map, oneOf, s, top)


type Route
    = Articles Article.Route
    | ArticleLists ArticleList.Route
    | Avatars Avatar.Route
    | Banners Banner.Route
    | Buttons Button.Route
    | Cards Card.Route
    | Collections Collection.Route
    | DefinitionLists DefinitionList.Route
    | ErrorPages ErrorPage.Route
    | Footers Footer.Route
    | Forms Form.Route
    | Headers Header.Route
    | Layouts Layout.Route
    | Links Link.Route
    | ListComponents
    | Lists List_.Route
    | Marketing Marketing.Route
    | Navs Nav.Route
    | NotFound
    | Pages Page.Route
    | Quotes Quote.Route
    | Tables Table.Route
    | Texts Text.Route


fromUrl : Url -> Route
fromUrl url =
    url
        |> Url.Parser.parse matchers
        |> Maybe.withDefault NotFound


toPath : Route -> String
toPath route =
    case route of
        Articles subRoute ->
            "/components/articles/" ++ Article.routeToPath subRoute ++ "/"

        ArticleLists subRoute ->
            "/components/article-lists/"
                ++ ArticleList.routeToPath subRoute
                ++ "/"

        Avatars subRoute ->
            "/components/avatars/" ++ Avatar.routeToPath subRoute ++ "/"

        Banners subRoute ->
            "/components/banners/" ++ Banner.routeToPath subRoute ++ "/"

        Buttons subRoute ->
            "/components/buttons/" ++ Button.routeToPath subRoute ++ "/"

        Cards subRoute ->
            "/components/cards/" ++ Card.routeToPath subRoute ++ "/"

        Collections subRoute ->
            "/components/collections/" ++ Collection.routeToPath subRoute ++ "/"

        DefinitionLists subRoute ->
            "/components/definition-lists/"
                ++ DefinitionList.routeToPath subRoute
                ++ "/"

        ErrorPages subRoute ->
            "/components/error-pages/" ++ ErrorPage.routeToPath subRoute ++ "/"

        Footers subRoute ->
            "/components/footers/" ++ Footer.routeToPath subRoute ++ "/"

        Forms subRoute ->
            "/components/forms/" ++ Form.routeToPath subRoute ++ "/"

        Headers subRoute ->
            "/components/headers/" ++ Header.routeToPath subRoute ++ "/"

        Layouts subRoute ->
            "/components/layout/" ++ Layout.routeToPath subRoute ++ "/"

        Links subRoute ->
            "/components/links/" ++ Link.routeToPath subRoute ++ "/"

        ListComponents ->
            "/components/"

        Lists subRoute ->
            "/components/lists/" ++ List_.routeToPath subRoute ++ "/"

        Marketing subRoute ->
            "/components/marketing/" ++ Marketing.routeToPath subRoute ++ "/"

        Navs subRoute ->
            "/components/nav/" ++ Nav.routeToPath subRoute ++ "/"

        NotFound ->
            "/not-found/"

        Pages subRoute ->
            "/components/pages/" ++ Page.routeToPath subRoute ++ "/"

        Quotes subRoute ->
            "/components/quotes/" ++ Quote.routeToPath subRoute ++ "/"

        Tables subRoute ->
            "/components/tables/" ++ Table.routeToPath subRoute ++ "/"

        Texts subRoute ->
            "/components/text/" ++ Text.routeToPath subRoute ++ "/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map ListComponents top
        , map ListComponents (s "components")
        , map Articles (s "components" </> s "articles" </> Article.matchers)
        , map
            ArticleLists
            (s "components" </> s "article-lists" </> ArticleList.matchers)
        , map Avatars (s "components" </> s "avatars" </> Avatar.matchers)
        , map Banners (s "components" </> s "banners" </> Banner.matchers)
        , map Buttons (s "components" </> s "buttons" </> Button.matchers)
        , map Cards (s "components" </> s "cards" </> Card.matchers)
        , map
            Collections
            (s "components" </> s "collections" </> Collection.matchers)
        , map
            DefinitionLists
            (s "components"
                </> s "definition-lists"
                </> DefinitionList.matchers
            )
        , map
            ErrorPages
            (s "components" </> s "error-pages" </> ErrorPage.matchers)
        , map Footers (s "components" </> s "footers" </> Footer.matchers)
        , map Forms (s "components" </> s "forms" </> Form.matchers)
        , map Headers (s "components" </> s "headers" </> Header.matchers)
        , map Layouts (s "components" </> s "layout" </> Layout.matchers)
        , map Links (s "components" </> s "links" </> Link.matchers)
        , map Lists (s "components" </> s "lists" </> List_.matchers)
        , map
            Marketing
            (s "components" </> s "marketing" </> Marketing.matchers)
        , map Navs (s "components" </> s "nav" </> Nav.matchers)
        , map Pages (s "components" </> s "pages" </> Page.matchers)
        , map Quotes (s "components" </> s "quotes" </> Quote.matchers)
        , map Tables (s "components" </> s "tables" </> Table.matchers)
        , map Texts (s "components" </> s "text" </> Text.matchers)
        ]
