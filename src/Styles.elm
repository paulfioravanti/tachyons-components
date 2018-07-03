module Styles exposing (bodyClasses, centerContent)

import ArticleList
import Route
    exposing
        ( Route
            ( ArticleLists
            , ListComponents
            , NotFound
            )
        )


bodyClasses : Route -> String
bodyClasses route =
    let
        styles =
            case route of
                ArticleLists articleListRoute ->
                    articleListRoute
                        |> ArticleList.bodyClasses

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
