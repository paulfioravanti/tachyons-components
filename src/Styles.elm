module Styles exposing (bodyClasses, centerContent)

import Article
import ArticleList
import Avatar
import Banner
import Route
    exposing
        ( Route
            ( ArticleLists
            , Articles
            , Avatars
            , Banners
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

                Banners bannerRoute ->
                    bannerRoute
                        |> Banner.bodyClasses

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
