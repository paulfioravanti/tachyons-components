module ArticleList.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = TitlePreviewAuthorMedia
    | TitlePreviewAuthorMediaFlipped


matchers : Parser (Route -> a) a
matchers =
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
    [ TitlePreviewAuthorMedia
    , TitlePreviewAuthorMediaFlipped
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        TitlePreviewAuthorMedia ->
            "title-preview-author-media"

        TitlePreviewAuthorMediaFlipped ->
            "title-preview-author-media-flipped"
