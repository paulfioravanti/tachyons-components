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
            , Social
            , SocialCircles
            , SocialSimple
            , SocialSimpleText
            , SocialText
            , Studios
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

        Social ->
            [ "bg-center"
            , "contain"
            ]

        SocialCircles ->
            [ "bg-center"
            , "contain"
            ]

        SocialSimple ->
            [ "bg-center" ]

        SocialSimpleText ->
            [ "bg-center" ]

        SocialText ->
            [ "bg-center" ]

        Studios ->
            [ "bg-center"
            , "contain"
            ]
