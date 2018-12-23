module Layout.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


type Route
    = AspectRatio_16x9
    | AspectRatio_1x1
    | AspectRatio_3x4
    | AspectRatio_4x3
    | AspectRatio_4x6
    | AspectRatio_5x7
    | AspectRatio_5x8
    | AspectRatio_6x4
    | AspectRatio_7x5
    | AspectRatio_8x5
    | AspectRatio_9x16
    | CenteredContainer
    | FiveColumn
    | FiveColumnCollapseAlternate
    | FiveColumnCollapseAsymmetrical
    | FiveColumnCollapseMixed
    | FiveColumnCollapseOne
    | FixedTableLayoutGridMixedRows
    | FixedTableLayoutGrid
    | FlagObject
    | FlagObjectBottom
    | FlagObjectCollapse
    | FlagObjectTop
    | FourColumn
    | FourColumnCollapseTwo
    | FourColumnCollapseTwoCollapseOne
    | FullBleed_16x9
    | FullBleed_4x6
    | FullBleed_5x7
    | FullBleed_5x8
    | FullBleed_6x4
    | FullBleed_7x5
    | FullBleed_8x5
    | FullBleed_9x16
    | FullBleedSquare
    | FullScreenCenteredTitle
    | HorizontalAspectRatios
    | ThreeColumn
    | ThreeColumnCollapseOne
    | TwoColumn
    | TwoColumnCollapseOne


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
    [ AspectRatio_16x9
    , AspectRatio_1x1
    , AspectRatio_3x4
    , AspectRatio_4x3
    , AspectRatio_4x6
    , AspectRatio_5x7
    , AspectRatio_5x8
    , AspectRatio_6x4
    , AspectRatio_7x5
    , AspectRatio_8x5
    , AspectRatio_9x16
    , CenteredContainer
    , FiveColumn
    , FiveColumnCollapseAlternate
    , FiveColumnCollapseAsymmetrical
    , FiveColumnCollapseMixed
    , FiveColumnCollapseOne
    , FixedTableLayoutGridMixedRows
    , FixedTableLayoutGrid
    , FlagObject
    , FlagObjectBottom
    , FlagObjectCollapse
    , FlagObjectTop
    , FourColumn
    , FourColumnCollapseTwo
    , FourColumnCollapseTwoCollapseOne
    , FullBleed_16x9
    , FullBleed_4x6
    , FullBleed_5x7
    , FullBleed_5x8
    , FullBleed_6x4
    , FullBleed_7x5
    , FullBleed_8x5
    , FullBleed_9x16
    , FullBleedSquare
    , FullScreenCenteredTitle
    , HorizontalAspectRatios
    , ThreeColumn
    , ThreeColumnCollapseOne
    , TwoColumn
    , TwoColumnCollapseOne
    ]
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        AspectRatio_16x9 ->
            "aspect-ratio-16x9"

        AspectRatio_1x1 ->
            "aspect-ratio-1x1"

        AspectRatio_3x4 ->
            "aspect-ratio-3x4"

        AspectRatio_4x3 ->
            "aspect-ratio-4x3"

        AspectRatio_4x6 ->
            "aspect-ratio-4x6"

        AspectRatio_5x7 ->
            "aspect-ratio-5x7"

        AspectRatio_5x8 ->
            "aspect-ratio-5x8"

        AspectRatio_6x4 ->
            "aspect-ratio-6x4"

        AspectRatio_7x5 ->
            "aspect-ratio-7x5"

        AspectRatio_8x5 ->
            "aspect-ratio-8x5"

        AspectRatio_9x16 ->
            "aspect-ratio-9x16"

        CenteredContainer ->
            "centered-container"

        FiveColumn ->
            "five-column"

        FiveColumnCollapseAlternate ->
            "five-column-collapse-alternative"

        FiveColumnCollapseAsymmetrical ->
            "five-column-collapse-asymmetrical"

        FiveColumnCollapseMixed ->
            "five-column-collapse-mixed"

        FiveColumnCollapseOne ->
            "five-column-collapse-one"

        FixedTableLayoutGridMixedRows ->
            "fixted-table-layout-grid-mixed-rows"

        FixedTableLayoutGrid ->
            "fixted-table-layout-grid"

        FlagObject ->
            "flag-object"

        FlagObjectBottom ->
            "flag-object-bottom"

        FlagObjectCollapse ->
            "flag-object-collapse"

        FlagObjectTop ->
            "flag-object-top"

        FourColumn ->
            "four-column"

        FourColumnCollapseTwo ->
            "four-column-collapse-two"

        FourColumnCollapseTwoCollapseOne ->
            "four-column-collapse-two-collapse-one"

        FullBleed_16x9 ->
            "full-bleed-16x9"

        FullBleed_4x6 ->
            "full-bleed-4x6"

        FullBleed_5x7 ->
            "full-bleed-5x7"

        FullBleed_5x8 ->
            "full-bleed-5x8"

        FullBleed_6x4 ->
            "full-bleed-6x4"

        FullBleed_7x5 ->
            "full-bleed-7x5"

        FullBleed_8x5 ->
            "full-bleed-8x5"

        FullBleed_9x16 ->
            "full-bleed-9x16"

        FullBleedSquare ->
            "full-bleed-square"

        FullScreenCenteredTitle ->
            "full-screen-centered-title"

        HorizontalAspectRatios ->
            "horizontal-aspect-ratios"

        ThreeColumn ->
            "three-column"

        ThreeColumnCollapseOne ->
            "three-column-collapse-one"

        TwoColumn ->
            "two-column"

        TwoColumnCollapseOne ->
            "two-column-collapse-one"
