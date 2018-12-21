module Quote.Styles exposing
    ( bodyClasses
    , sectionContentLinkImageFormatting
    )

import Quote.Route as Route exposing (Route)


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
        Route.LeftBorder ->
            [ "bg-left" ]

        Route.PullQuote ->
            [ "bg-center"
            , "contain"
            ]
