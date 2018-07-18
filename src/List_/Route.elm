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


matchers : Parser (Route -> a) a
matchers =
    [ BlockItemDottedBorder
    , BorderSpaced
    , BorderTight
    , ContactPhone
    , FollowerNotifications
    , FollowerNotificationsRoundedSquareAvatar
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
