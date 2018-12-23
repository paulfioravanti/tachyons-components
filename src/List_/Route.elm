module List_.Route exposing (Route(..), matchers, toPath)

import Url.Parser exposing (Parser)


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
    let
        matcher : Route -> Parser (Route -> a) a
        matcher route =
            route
                |> toPath
                |> Url.Parser.s
                |> Url.Parser.map route
    in
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
        |> List.map matcher
        |> Url.Parser.oneOf


toPath : Route -> String
toPath route =
    case route of
        BlockItemDottedBorder ->
            "block-item-dotted-border"

        BorderSpaced ->
            "border-spaced"

        BorderTight ->
            "border-tight"

        ContactPhone ->
            "contact-phone"

        FollowerNotifications ->
            "follower-notifications"

        FollowerNotificationsRoundedSquareAvatar ->
            "follower-notifications-rounded-square-avatar"

        Hashtags ->
            "hashtags"

        ItemsImageTitlePrice ->
            "items-image-title-price"

        LargeLinksInline ->
            "large-links-inline"

        LinksAnimateColor ->
            "links-animate-color"

        LinksInline ->
            "links-inline"

        LinksWithBordersInline ->
            "links-with-borders-inline"

        SlabStat ->
            "slab-slat"

        SlabStatLarge ->
            "slab-slat-large"

        SlabStatSmall ->
            "slab-slat-small"

        TitleText ->
            "title-text"
