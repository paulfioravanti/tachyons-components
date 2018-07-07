module ArticleList.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = TitlePreviewAuthorMedia
    | TitlePreviewAuthorMediaFlipped


matchers : Parser (Route -> a) a
matchers =
    [ TitlePreviewAuthorMedia
    , TitlePreviewAuthorMediaFlipped
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
