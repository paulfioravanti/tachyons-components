module Nav.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Nav.Route
    exposing
        ( Route
            ( FixedSemiTransparent
            , LargeTitleLinkList
            , LogoLinksInline
            , LogoLinksInlineCollapse
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
                FixedSemiTransparent ->
                    [ "cover" ]

                LargeTitleLinkList ->
                    [ "contain" ]

                LogoLinksInline ->
                    [ "contain" ]

                LogoLinksInlineCollapse ->
                    [ "contain" ]

                _ ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
