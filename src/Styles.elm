module Styles exposing (bodyClasses, centerContent)

import Article
import ArticleList
import Avatar
import Banner
import Button
import Card
import Collection
import Route
    exposing
        ( Route
            ( ArticleLists
            , Articles
            , Avatars
            , Banners
            , Buttons
            , Cards
            , Collections
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
                ArticleLists subRoute ->
                    ArticleList.bodyClasses subRoute

                Articles subRoute ->
                    Article.bodyClasses subRoute

                Avatars subRoute ->
                    Avatar.bodyClasses subRoute

                Banners subRoute ->
                    Banner.bodyClasses subRoute

                Buttons subRoute ->
                    Button.bodyClasses subRoute

                Cards subRoute ->
                    Card.bodyClasses subRoute

                Collections subRoute ->
                    Collection.bodyClasses subRoute

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
