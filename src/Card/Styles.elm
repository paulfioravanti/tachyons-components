module Card.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Card.Route exposing (Route(AlbumCentered))


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
            AlbumCentered ->
                "pt5" :: defaultFormatting


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    let
        defaultFormatting =
            "bg-center"

        componentSpecificFormatting =
            case route of
                AlbumCentered ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
