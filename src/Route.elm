module Route exposing (Route(..), fromLocation, toPath)

import ArticleList
import Navigation exposing (Location)
import UrlParser exposing (Parser, (</>), map, oneOf, s, top)


type Route
    = ArticleLists ArticleList.Route
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
        ArticleLists articleListRoute ->
            "/components/article-lists/"
                ++ ArticleList.toPath articleListRoute

        ListComponents ->
            "/components/"

        NotFound ->
            "/not-found/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map
            ArticleLists
            (s "components" </> s "article-lists" </> ArticleList.matchers)
        , map ListComponents top
        , map ListComponents (s "components")
        ]
