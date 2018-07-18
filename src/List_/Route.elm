module List_.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
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
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
