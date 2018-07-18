module List_.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import List_.Route
    exposing
        ( Route
            ( Hashtags
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
                Hashtags ->
                    [ "cover" ]

                _ ->
                    [ "contain" ]
    in
        defaultFormatting :: componentSpecificFormatting
