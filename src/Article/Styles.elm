module Article.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Article.Route
    exposing
        ( Route
            ( Feature
            , PhotoEssay
            , TitleHighlightHeaderCover
            )
        )


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        _ ->
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    case route of
        Feature ->
            [ "cover"
            , "bg-center"
            ]

        PhotoEssay ->
            [ "cover"
            , "bg-center"
            ]

        TitleHighlightHeaderCover ->
            [ "bg-center" ]

        _ ->
            [ "contain"
            , "bg-center"
            ]
