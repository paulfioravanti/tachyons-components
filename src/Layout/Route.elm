module Layout.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


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
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
