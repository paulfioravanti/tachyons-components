module Card.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Card.Route
    exposing
        ( Route
            ( AlbumCentered
            , AlbumLeft
            , BasicTextCard
            , NewsCard
            , ProductCard
            , ProfileCard
            , ProfileCardTitleSubtitle
            , SuggestedProfile
            , TextCard
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

        nearWhiteBackground =
            [ "bg-near-white"
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
                nearWhiteBackground

            ProductCard ->
                defaultFormatting

            ProfileCard ->
                nearWhiteBackground

            ProfileCardTitleSubtitle ->
                nearWhiteBackground

            SuggestedProfile ->
                defaultFormatting

            TextCard ->
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

                ProfileCard ->
                    []

                ProfileCardTitleSubtitle ->
                    []

                SuggestedProfile ->
                    []

                TextCard ->
                    [ "contain" ]
    in
        defaultFormatting :: componentSpecificFormatting
