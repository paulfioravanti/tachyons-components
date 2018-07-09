module Route exposing (Route(..), fromLocation, toPath)

import Article
import ArticleList
import Avatar
import Banner
import Button
import Card
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

        Banners bannerRoute ->
            "/components/banners/" ++ Utils.pathify bannerRoute ++ "/"

        Buttons buttonRoute ->
            "/components/buttons/" ++ Utils.pathify buttonRoute ++ "/"

        Cards cardRoute ->
            "/components/cards/" ++ Utils.pathify cardRoute ++ "/"

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
        ]
