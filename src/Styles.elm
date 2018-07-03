module Styles exposing (bodyClasses, centerContent)

import Route
    exposing
        ( Route
            ( ArticleListsTitlePreviewAuthorMediaFlipped
            , ListComponents
            , NotFound
            )
        )


bodyClasses : Route -> String
bodyClasses route =
    let
        styles =
            case route of
                ArticleListsTitlePreviewAuthorMediaFlipped ->
                    [ "bg-white"
                    , "sans-serif"
                    , "w-100"
                    ]

                ListComponents ->
                    [ "sans-serif"
                    , "w-100"
                    ]

                NotFound ->
                    [ "sans-serif"
                    , "w-100"
                    ]
    in
        styles
            |> String.join " "


centerContent : String
centerContent =
    [ "center"
    , "mw9"
    ]
        |> String.join " "
