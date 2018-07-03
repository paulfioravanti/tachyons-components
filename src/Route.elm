module Route exposing (Route(..), fromLocation, toPath)

import Navigation exposing (Location)
import UrlParser exposing (Parser, (</>), map, oneOf, s, top)


type Route
    = ArticleListsTitlePreviewAuthorMediaFlipped
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
        ArticleListsTitlePreviewAuthorMediaFlipped ->
            "/components/article-lists/title-preview-author-media-flipped/"

        ListComponents ->
            "/components/"

        NotFound ->
            "/not-found/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map
            ArticleListsTitlePreviewAuthorMediaFlipped
            (s "components"
                </> s "article-lists"
                </> s "title-preview-author-media-flipped"
            )
        , map ListComponents top
        , map ListComponents (s "components")
        ]
