module Header.Styles exposing
    ( bodyClasses
    , sectionContentLinkImageFormatting
    )

import Header.Route as Route exposing (Route)


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
                Route.CircleAvatarTitleSubtitle ->
                    []

                Route.RoundedAvatarTitleSubtitle ->
                    []

                Route.StartupHero ->
                    [ "cover" ]
    in
    defaultFormatting :: componentSpecificFormatting
