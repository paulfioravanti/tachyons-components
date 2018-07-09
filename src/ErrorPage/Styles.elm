module ErrorPage.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import ErrorPage.Route exposing (Route(FourOhFour))


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
                FourOhFour ->
                    [ "cover" ]
    in
        defaultFormatting :: componentSpecificFormatting
