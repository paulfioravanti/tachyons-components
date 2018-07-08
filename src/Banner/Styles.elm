module Banner.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Banner.Route exposing (Route(Info, SingleCta))


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
            SingleCta ->
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
                Info ->
                    []

                SingleCta ->
                    [ "contain" ]

                _ ->
                    [ "cover" ]
    in
        defaultFormatting :: componentSpecificFormatting
