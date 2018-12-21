module Article.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Article.Route as Route exposing (Route)


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
        Route.Feature ->
            [ "cover"
            , "bg-center"
            ]

        Route.PhotoEssay ->
            [ "cover"
            , "bg-center"
            ]

        Route.TitleHighlightHeaderCover ->
            [ "bg-center" ]

        _ ->
            [ "contain"
            , "bg-center"
            ]
