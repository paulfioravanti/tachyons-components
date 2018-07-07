module ArticleList.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser, oneOf)
import Utils


type Route
    = TitlePreviewAuthorMedia
    | TitlePreviewAuthorMediaFlipped


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ Utils.routeFor TitlePreviewAuthorMedia
        , Utils.routeFor TitlePreviewAuthorMediaFlipped
        ]
