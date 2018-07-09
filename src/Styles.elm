module Styles exposing (bodyClasses, centerContent)

import Article
import ArticleList
import Avatar
import Banner
import Button
import Card
import Route
    exposing
        ( Route
            ( ArticleLists
            , Articles
            , Avatars
            , Banners
            , Buttons
            , Cards
            , ListComponents
            , NotFound
            )
        )


bodyClasses : Route -> String
bodyClasses route =
    let
        defaultStyles =
            [ "sans-serif"
            , "w-100"
            ]

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

                Buttons buttonRoute ->
                    buttonRoute
                        |> Button.bodyClasses

                Cards cardRoute ->
                    cardRoute
                        |> Card.bodyClasses

                ListComponents ->
                    defaultStyles

                NotFound ->
                    defaultStyles
    in
        styles
            |> String.join " "


centerContent : String
centerContent =
    [ "center"
    , "mw9"
    ]
        |> String.join " "
