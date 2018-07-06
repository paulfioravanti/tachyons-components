module Styles exposing (bodyClasses, centerContent)

import Article
import ArticleList
import Avatar
import Route
    exposing
        ( Route
            ( ArticleLists
            , Articles
            , Avatars
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

                Articles articleRoute ->
                    articleRoute
                        |> Article.bodyClasses

                Avatars avatarRoute ->
                    avatarRoute
                        |> Avatar.bodyClasses

                _ ->
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
