module Route exposing (Route(..), fromLocation, toPath)

import Article
import ArticleList
import Navigation exposing (Location)
import String.Extra
import UrlParser exposing (Parser, (</>), map, oneOf, s, top)


type Route
    = Articles Article.Route
    | ArticleLists ArticleList.Route
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
            "/components/articles/" ++ pathify articleRoute

        ArticleLists articleListRoute ->
            "/components/article-lists/" ++ pathify articleListRoute

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
        , map ListComponents top
        , map ListComponents (s "components")
        ]


pathify : route -> String
pathify route =
    let
        path =
            route
                |> toString
                |> String.Extra.underscored
                |> String.Extra.dasherize
    in
        path ++ "/"
