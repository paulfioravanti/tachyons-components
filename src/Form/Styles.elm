module Form.Styles
    exposing
        ( bodyClasses
        , sectionContentLinkImageFormatting
        )

import Form.Route exposing (Route(CheckboxList))


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
                CheckboxList ->
                    []
    in
        defaultFormatting :: componentSpecificFormatting
