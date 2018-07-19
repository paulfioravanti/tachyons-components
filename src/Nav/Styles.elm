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
            , MinimalSignUp
            , TitleLinkList
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
            MinimalSignUp ->
                [ "bg-near-black"
                , "sans-serif"
                , "w-100"
                ]

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

                MinimalSignUp ->
                    [ "contain" ]

                TitleLinkList ->
                    [ "contain" ]

                _ ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
