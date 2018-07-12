module Button.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Button.Route
    exposing
        ( Route
            ( Basic
            , BasicPreviousNext
            , BasicRoundedExtraSmall
            , BasicRoundedSmall
            , BasicRounded
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
                "pt5" :: defaultFormatting


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    let
        defaultFormatting =
            "bg-center"

        componentSpecificFormatting =
            case route of
                Basic ->
                    []

                BasicPreviousNext ->
                    [ "contain" ]

                BasicRoundedExtraSmall ->
                    []

                BasicRoundedSmall ->
                    []

                BasicRounded ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
