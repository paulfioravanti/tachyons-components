module Layout.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Layout.Route as Route exposing (Route)


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
                Route.FullScreenCenteredTitle ->
                    [ "cover" ]

                Route.HorizontalAspectRatios ->
                    [ "cover" ]

                _ ->
                    [ "contain" ]
    in
    defaultFormatting :: componentSpecificFormatting
