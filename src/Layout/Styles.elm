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
    in
        defaultFormatting :: componentSpecificFormatting
