module Button.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Button.Route
    exposing
        ( Route
            ( BasicPreviousNext
            , BasicRoundedExtraSmall
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
                BasicPreviousNext ->
                    [ "contain" ]

                BasicRoundedExtraSmall ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
