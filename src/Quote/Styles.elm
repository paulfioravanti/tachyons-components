module Quote.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Quote.Route exposing (Route(LeftBorder, PullQuote))


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
        LeftBorder ->
            [ "bg-left" ]

        PullQuote ->
            [ "bg-center"
            , "contain"
            ]
