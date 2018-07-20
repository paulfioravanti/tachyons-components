module Page.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Page.Route
    exposing
        ( Route
            ( Double
            , FourByFourMixedGrid
            , PortfolioProject
            , SwissCoverFiveColumns
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
            FourByFourMixedGrid ->
                [ "black-80", "helvetica" ] ++ defaultFormatting

            SwissCoverFiveColumns ->
                [ "bg-dark-gray"
                , "helvetica"
                , "sans-serif"
                , "w-100"
                , "white"
                ]

            _ ->
                defaultFormatting


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    let
        defaultFormatting =
            "bg-center"

        componentSpecificFormatting =
            case route of
                Double ->
                    [ "cover" ]

                FourByFourMixedGrid ->
                    [ "cover" ]

                PortfolioProject ->
                    [ "contain" ]

                SwissCoverFiveColumns ->
                    [ "cover" ]
    in
        defaultFormatting :: componentSpecificFormatting
