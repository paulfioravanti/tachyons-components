module Footer.Styles exposing
    ( bodyClasses
    , sectionContentLinkImageFormatting
    )

import Footer.Route as Route exposing (Route)


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
        Route.CenteredIconsHoverGlow ->
            [ "bg-center"
            , "cover"
            ]

        Route.InlineText ->
            [ "bg-center"
            , "cover"
            ]

        Route.SimpleLargeType ->
            [ "bg-left"
            , "cover"
            ]

        Route.SmallPrint ->
            [ "bg-center"
            , "contain"
            ]

        Route.Social ->
            [ "bg-center"
            , "contain"
            ]

        Route.SocialCircles ->
            [ "bg-center"
            , "contain"
            ]

        Route.SocialSimple ->
            [ "bg-center" ]

        Route.SocialSimpleText ->
            [ "bg-center" ]

        Route.SocialText ->
            [ "bg-center" ]

        Route.Studios ->
            [ "bg-center"
            , "contain"
            ]
