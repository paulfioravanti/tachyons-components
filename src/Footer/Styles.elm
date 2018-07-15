module Footer.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Footer.Route
    exposing
        ( Route
            ( CenteredIconsHoverGlow
            , InlineText
            , SimpleLargeType
            , SmallPrint
            , SocialCircles
            , SocialSimpleText
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
    case route of
        CenteredIconsHoverGlow ->
            [ "bg-center"
            , "cover"
            ]

        InlineText ->
            [ "bg-center"
            , "cover"
            ]

        SimpleLargeType ->
            [ "bg-left"
            , "cover"
            ]

        SmallPrint ->
            [ "bg-center"
            , "contain"
            ]

        SocialCircles ->
            [ "bg-center"
            , "contain"
            ]

        SocialSimpleText ->
            [ "bg-center" ]
