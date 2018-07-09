module Footer.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Footer.Route exposing (Route(CenteredIconsHoverGlow))


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
                CenteredIconsHoverGlow ->
                    [ "cover" ]
    in
        defaultFormatting :: componentSpecificFormatting
