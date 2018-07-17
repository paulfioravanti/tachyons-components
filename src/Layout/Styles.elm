module Layout.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Layout.Route
    exposing
        ( Route
            ( FullScreenCenteredTitle
            , HorizontalAspectRatios
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
                FullScreenCenteredTitle ->
                    [ "cover" ]

                HorizontalAspectRatios ->
                    [ "cover" ]

                _ ->
                    [ "contain" ]
    in
        defaultFormatting :: componentSpecificFormatting
