module List_.Styles exposing
    ( bodyClasses
    , sectionContentLinkImageFormatting
    )

import List_.Route as Route exposing (Route)


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
                Route.Hashtags ->
                    [ "cover" ]

                Route.LargeLinksInline ->
                    [ "cover" ]

                Route.LinksInline ->
                    [ "cover" ]

                Route.LinksWithBordersInline ->
                    [ "cover" ]

                Route.TitleText ->
                    [ "cover" ]

                _ ->
                    [ "contain" ]
    in
    defaultFormatting :: componentSpecificFormatting
