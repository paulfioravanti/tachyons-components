module Header.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Header.Route exposing (Route(CircleAvatarTitleSubtitle))


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
                CircleAvatarTitleSubtitle ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
