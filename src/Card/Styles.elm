module Card.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Card.Route as Route exposing (Route)


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
        Route.AlbumCentered ->
            "pt5" :: defaultFormatting

        Route.AlbumLeft ->
            "pt5" :: defaultFormatting

        Route.BasicTextCard ->
            defaultFormatting

        Route.NewsCard ->
            nearWhiteBackground

        Route.ProductCard ->
            defaultFormatting

        Route.ProfileCard ->
            nearWhiteBackground

        Route.ProfileCardTitleSubtitle ->
            nearWhiteBackground

        Route.SuggestedProfile ->
            defaultFormatting

        Route.TextCard ->
            defaultFormatting


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    let
        defaultFormatting =
            "bg-center"

        componentSpecificFormatting =
            case route of
                Route.AlbumCentered ->
                    []

                Route.AlbumLeft ->
                    []

                Route.BasicTextCard ->
                    [ "contain" ]

                Route.NewsCard ->
                    []

                Route.ProductCard ->
                    []

                Route.ProfileCard ->
                    []

                Route.ProfileCardTitleSubtitle ->
                    []

                Route.SuggestedProfile ->
                    []

                Route.TextCard ->
                    [ "contain" ]
    in
    defaultFormatting :: componentSpecificFormatting
