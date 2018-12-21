module List_.Route exposing (Route(..), matchers)

import Url.Parser exposing (Parser)
import Utils


type Route
    = BlockItemDottedBorder
    | BorderSpaced
    | BorderTight
    | ContactPhone
    | FollowerNotifications
    | FollowerNotificationsRoundedSquareAvatar
    | Hashtags
    | ItemsImageTitlePrice
    | LargeLinksInline
    | LinksAnimateColor
    | LinksInline
    | LinksWithBordersInline
    | SlabStat
    | SlabStatLarge
    | SlabStatSmall
    | TitleText


matchers : Parser (Route -> a) a
matchers =
    [ BlockItemDottedBorder
    , BorderSpaced
    , BorderTight
    , ContactPhone
    , FollowerNotifications
    , FollowerNotificationsRoundedSquareAvatar
    , Hashtags
    , ItemsImageTitlePrice
    , LargeLinksInline
    , LinksAnimateColor
    , LinksInline
    , LinksWithBordersInline
    , SlabStat
    , SlabStatLarge
    , SlabStatSmall
    , TitleText
    ]
        |> List.map Utils.routeFor
        |> Url.Parser.oneOf
