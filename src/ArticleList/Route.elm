module ArticleList.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, map, oneOf, s)


type Route
    = TitlePreviewAuthorMedia
    | TitlePreviewAuthorMediaFlipped


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
