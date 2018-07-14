module Collection.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Collection.Route
    exposing
        ( Route
            ( Albums
            , Movies
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
                Albums ->
                    [ "cover" ]

                Movies ->
                    [ "cover" ]
    in
        defaultFormatting :: componentSpecificFormatting
