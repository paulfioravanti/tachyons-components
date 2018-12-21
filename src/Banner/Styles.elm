module Banner.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Banner.Route as Route exposing (Route)


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
        Route.SingleCta ->
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
                Route.Info ->
                    []

                Route.SingleCta ->
                    [ "contain" ]

                _ ->
                    [ "cover" ]
    in
    defaultFormatting :: componentSpecificFormatting
