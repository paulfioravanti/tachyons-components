module Button.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = Basic
    | BasicPreviousNext
    | BasicRoundedExtraSmall
    | BasicRoundedSmall
    | BasicRounded
    | CenteredIcons
    | Pill
    | PillGrow


matchers : Parser (Route -> a) a
matchers =
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
    [ Basic
    , BasicPreviousNext
    , BasicRoundedExtraSmall
    , BasicRoundedSmall
    , BasicRounded
    , CenteredIcons
    , Pill
    , PillGrow
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        Basic ->
            "basic"

        BasicPreviousNext ->
            "basic-previous-next"

        BasicRoundedExtraSmall ->
            "basic-rounded-extra-small"

        BasicRoundedSmall ->
            "basic-rounded-small"

        BasicRounded ->
            "basic-rounded"

        CenteredIcons ->
            "centered-icons"

        Pill ->
            "pill"

        PillGrow ->
            "pill-grow"
