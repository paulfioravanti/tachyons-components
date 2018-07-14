module Collection.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Collection.Route
    exposing
        ( Route
            ( Albums
            , Movies
            , Posters
            , PostersDim
            , SquareTitleSubtitle
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
            Posters ->
                [ "bg-black-10"
                , "sans-serif"
                , "w-100"
                ]

            PostersDim ->
                [ "bg-black"
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
                _ ->
                    [ "cover" ]
    in
        defaultFormatting :: componentSpecificFormatting
