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
    | ListComponents
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

        ListComponents ->
            "/components/"

        NotFound ->
            "/not-found/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map ListComponents top
        , map ListComponents (s "components")
        , map
            Articles
            (s "components" </> s "articles" </> Article.matchers)
        , map
            ArticleLists
            (s "components" </> s "article-lists" </> ArticleList.matchers)
        , map
            Avatars
            (s "components" </> s "avatars" </> Avatar.matchers)
        , map
            Banners
            (s "components" </> s "banners" </> Banner.matchers)
        , map
            Buttons
            (s "components" </> s "buttons" </> Button.matchers)
        , map
            Cards
            (s "components" </> s "cards" </> Card.matchers)
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
        ]
