module Route exposing (Route(..), fromLocation, toPath)

import Article
import ArticleList
import Avatar
import Navigation exposing (Location)
import UrlParser exposing (Parser, (</>), map, oneOf, s, top)
import Utils


type Route
    = Articles Article.Route
    | ArticleLists ArticleList.Route
    | Avatars Avatar.Route
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
        Articles articleRoute ->
            "/components/articles/" ++ Utils.pathify articleRoute ++ "/"

        ArticleLists articleListRoute ->
            "/components/article-lists/"
                ++ Utils.pathify articleListRoute
                ++ "/"

        Avatars avatarRoute ->
            "/components/avatars/" ++ Utils.pathify avatarRoute ++ "/"

        ListComponents ->
            "/components/"

        NotFound ->
            "/not-found/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ routeFor Articles Article.matchers
        , routeFor ArticleLists ArticleList.matchers
        , routeFor Avatars Avatar.matchers
        , map ListComponents top
        , map ListComponents (s "components")
        ]


routeFor : a -> Parser a b -> Parser (b -> c) c
routeFor route matchers =
    map route (s "components" </> s (Utils.pathify route) </> matchers)
