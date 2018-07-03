module Route exposing (ArticleListRoute(..), Route(..), fromLocation, toPath)

import Navigation exposing (Location)
import UrlParser exposing (Parser, (</>), map, oneOf, s, top)


type Route
    = ArticleLists ArticleListRoute
    | ListComponents
    | NotFound


type ArticleListRoute
    = TitlePreviewAuthorMediaFlipped


fromLocation : Location -> Route
fromLocation location =
    location
        |> UrlParser.parsePath matchers
        |> Maybe.withDefault NotFound


toPath : Route -> String
toPath route =
    case route of
        ArticleLists TitlePreviewAuthorMediaFlipped ->
            "/components/article-lists/title-preview-author-media-flipped/"

        ListComponents ->
            "/components/"

        NotFound ->
            "/not-found/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map
            ArticleLists
            (s "components" </> s "article-lists" </> articleListMatchers)
        , map ListComponents top
        , map ListComponents (s "components")
        ]


articleListMatchers : Parser (ArticleListRoute -> a) a
articleListMatchers =
    oneOf
        [ map
            TitlePreviewAuthorMediaFlipped
            (s "title-preview-author-media-flipped")
        ]
