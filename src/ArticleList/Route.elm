module ArticleList.Route exposing (Route(..), matchers, toPath)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = TitlePreviewAuthorMedia
    | TitlePreviewAuthorMediaFlipped


toPath : Route -> String
toPath route =
    case route of
        TitlePreviewAuthorMedia ->
            "title-preview-author-media/"

        TitlePreviewAuthorMediaFlipped ->
            "title-preview-author-media-flipped/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map
            TitlePreviewAuthorMedia
            (s "title-preview-author-media")
        , map
            TitlePreviewAuthorMediaFlipped
            (s "title-preview-author-media-flipped")
        ]
