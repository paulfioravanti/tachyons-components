module Button.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Button.Route exposing (Route(BasicPreviousNext, CenteredIcons))


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
            CenteredIcons ->
                defaultFormatting

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

                _ ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
