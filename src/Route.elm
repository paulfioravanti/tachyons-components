module Route exposing (Route(..), fromLocation, toPath)

import Article
import ArticleList
import Avatar
import Navigation exposing (Location)
import String.Extra
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
        [ map Articles (s "components" </> s "articles" </> Article.matchers)
        , map
            ArticleLists
            (s "components" </> s "article-lists" </> ArticleList.matchers)
        , map Avatars (s "components" </> s "avatars" </> Avatar.matchers)
        , map ListComponents top
        , map ListComponents (s "components")
        ]
