module List_.Route exposing (Route(..), matchers)

import UrlParser exposing (Parser)
import Utils


type Route
    = BlockItemDottedBorder
    | BorderSpaced
    | BorderTight
    | ContactPhone
    | FollowerNotificationsRoundedSquareAvatar


matchers : Parser (Route -> a) a
matchers =
    [ BlockItemDottedBorder
    , BorderSpaced
    , BorderTight
    , ContactPhone
    , FollowerNotificationsRoundedSquareAvatar
    ]
        |> List.map Utils.routeFor
        |> UrlParser.oneOf
