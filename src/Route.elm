module Route exposing (Route(..), fromLocation, toPath)

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
import Navigation exposing (Location)
import UrlParser exposing (Parser, (</>), map, oneOf, s, top)
import Utils


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


fromLocation : Location -> Route
fromLocation location =
    location
        |> UrlParser.parsePath matchers
        |> Maybe.withDefault NotFound


toPath : Route -> String
toPath route =
    case route of
        Articles subRoute ->
            "/components/articles/" ++ Utils.pathify subRoute ++ "/"

        ArticleLists subRoute ->
            "/components/article-lists/" ++ Utils.pathify subRoute ++ "/"

        Avatars subRoute ->
            "/components/avatars/" ++ Utils.pathify subRoute ++ "/"

        Banners subRoute ->
            "/components/banners/" ++ Utils.pathify subRoute ++ "/"

        Buttons subRoute ->
            "/components/buttons/" ++ Utils.pathify subRoute ++ "/"

        Cards subRoute ->
            "/components/cards/" ++ Utils.pathify subRoute ++ "/"

        Collections subRoute ->
            "/components/collections/" ++ Utils.pathify subRoute ++ "/"

        DefinitionLists subRoute ->
            "/components/definition-lists/" ++ Utils.pathify subRoute ++ "/"

        ErrorPages subRoute ->
            "/components/error-pages/" ++ Utils.pathify subRoute ++ "/"

        Footers subRoute ->
            "/components/footers/" ++ Utils.pathify subRoute ++ "/"

        Forms subRoute ->
            "/components/forms/" ++ Utils.pathify subRoute ++ "/"

        Headers subRoute ->
            "/components/headers/" ++ Utils.pathify subRoute ++ "/"

        Layouts subRoute ->
            "/components/layout/" ++ Utils.pathify subRoute ++ "/"

        Links subRoute ->
            "/components/links/" ++ Utils.pathify subRoute ++ "/"

        ListComponents ->
            "/components/"

        Lists subRoute ->
            "/components/lists/" ++ Utils.pathify subRoute ++ "/"

        Marketing subRoute ->
            "/components/marketing/" ++ Utils.pathify subRoute ++ "/"

        Navs subRoute ->
            "/components/nav/" ++ Utils.pathify subRoute ++ "/"

        NotFound ->
            "/not-found/"


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
        ]
