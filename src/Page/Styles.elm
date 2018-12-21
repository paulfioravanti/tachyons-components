module Page.Styles exposing
    ( bodyClasses
    , sectionContentLinkImageFormatting
    )

import Page.Route as Route exposing (Route)


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
        Route.FourByFourMixedGrid ->
            [ "black-80", "helvetica" ] ++ defaultFormatting

        Route.SwissCoverFiveColumns ->
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
                Route.Double ->
                    [ "cover" ]

                Route.FourByFourMixedGrid ->
                    [ "cover" ]

                Route.PortfolioProject ->
                    [ "contain" ]

                Route.SwissCoverFiveColumns ->
                    [ "cover" ]
    in
    defaultFormatting :: componentSpecificFormatting
