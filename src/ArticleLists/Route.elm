module ArticleLists.Route exposing (Route(..), matchers, toPath)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = TitlePreviewAuthorMediaFlipped


toPath : Route -> String
toPath route =
    case route of
        TitlePreviewAuthorMediaFlipped ->
            "title-preview-author-media-flipped/"


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map
            TitlePreviewAuthorMediaFlipped
            (s "title-preview-author-media-flipped")
        ]
