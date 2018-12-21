module ArticleList.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
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
        |> Url.Parser.oneOf
