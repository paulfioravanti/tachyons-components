module Nav.Styles exposing
    ( bodyClasses
    , sectionContentLinkImageFormatting
    )

import Nav.Route as Route exposing (Route)


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
        Route.MinimalSignUp ->
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
                Route.FixedSemiTransparent ->
                    [ "cover" ]

                Route.LargeTitleLinkList ->
                    [ "contain" ]

                Route.LogoLinksInline ->
                    [ "contain" ]

                Route.LogoLinksInlineCollapse ->
                    [ "contain" ]

                Route.MinimalSignUp ->
                    [ "contain" ]

                Route.TitleLinkList ->
                    [ "contain" ]

                _ ->
                    []
    in
    defaultFormatting :: componentSpecificFormatting
