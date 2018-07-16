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
    in
        defaultFormatting :: componentSpecificFormatting
