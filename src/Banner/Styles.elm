module Banner.Styles exposing (bodyClasses, sectionContentLinkImageFormatting)

import Banner.Route exposing (Route(Info))


bodyClasses : Route -> List String
bodyClasses route =
    case route of
        _ ->
            [ "bg-white"
            , "pt5"
            , "sans-serif"
            , "w-100"
            ]


sectionContentLinkImageFormatting : Route -> List String
sectionContentLinkImageFormatting route =
    case route of
        Info ->
            [ "bg-center"
            ]

        _ ->
            [ "cover"
            , "bg-center"
            ]
