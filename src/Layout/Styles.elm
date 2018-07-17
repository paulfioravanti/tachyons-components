module Layout.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Layout.Route
    exposing
        ( Route
            ( AspectRatio16x9
            , AspectRatio1x1
            , AspectRatio3x4
            , AspectRatio4x3
            , AspectRatio4x6
            , AspectRatio5x7
            , AspectRatio5x8
            , AspectRatio6x4
            , AspectRatio7x5
            , AspectRatio8x5
            , AspectRatio9x16
            , CenteredContainer
            , FiveColumn
            , FiveColumnCollapseAlternate
            , FiveColumnCollapseAsymmetrical
            , FiveColumnCollapseMixed
            , FiveColumnCollapseOne
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
            _ ->
                defaultFormatting


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    let
        defaultFormatting =
            "bg-center"

        componentSpecificFormatting =
            case route of
                AspectRatio16x9 ->
                    [ "contain" ]

                AspectRatio1x1 ->
                    [ "contain" ]

                AspectRatio3x4 ->
                    [ "contain" ]

                AspectRatio4x3 ->
                    [ "contain" ]

                AspectRatio4x6 ->
                    [ "contain" ]

                AspectRatio5x7 ->
                    [ "contain" ]

                AspectRatio5x8 ->
                    [ "contain" ]

                AspectRatio6x4 ->
                    [ "contain" ]

                AspectRatio7x5 ->
                    [ "contain" ]

                AspectRatio8x5 ->
                    [ "contain" ]

                AspectRatio9x16 ->
                    [ "contain" ]

                CenteredContainer ->
                    [ "contain" ]

                FiveColumn ->
                    [ "contain" ]

                FiveColumnCollapseAlternate ->
                    [ "contain" ]

                FiveColumnCollapseAsymmetrical ->
                    [ "contain" ]

                FiveColumnCollapseMixed ->
                    [ "contain" ]

                FiveColumnCollapseOne ->
                    [ "contain" ]
    in
        defaultFormatting :: componentSpecificFormatting
