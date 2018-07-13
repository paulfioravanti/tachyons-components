module Card.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Card.Route
    exposing
        ( Route
            ( AlbumCentered
            , AlbumLeft
            , BasicTextCard
            , NewsCard
            , ProductCard
            )
        )


bodyClasses : Route -> List String
bodyClasses route =
    let
        defaultFormatting =
            [ "bg-white"
            , "sans-serif"
            , "w-100"
            ]
    in
        case route of
            AlbumCentered ->
                "pt5" :: defaultFormatting

            AlbumLeft ->
                "pt5" :: defaultFormatting

            BasicTextCard ->
                defaultFormatting

            NewsCard ->
                [ "bg-near-white"
                , "sans-serif"
                , "w-100"
                ]

            ProductCard ->
                defaultFormatting


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    let
        defaultFormatting =
            "bg-center"

        componentSpecificFormatting =
            case route of
                AlbumCentered ->
                    []

                AlbumLeft ->
                    []

                BasicTextCard ->
                    [ "contain" ]

                NewsCard ->
                    []

                ProductCard ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
