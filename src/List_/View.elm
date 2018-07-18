module List_.View exposing (view)

import Html exposing (Html)
import List_.BlockItemDottedBorder.View as BlockItemDottedBorder
import List_.BorderSpaced.View as BorderSpaced
import List_.BorderTight.View as BorderTight
import List_.ContactPhone.View as ContactPhone
import List_.FollowerNotifications.View as FollowerNotifications
import List_.FollowerNotificationsRoundedSquareAvatar.View as FollowerNotificationsRoundedSquareAvatar
import List_.Hashtags.View as Hashtags
import List_.ItemsImageTitlePrice.View as ItemsImageTitlePrice
import List_.LargeLinksInline.View as LargeLinksInline
import List_.LinksAnimateColor.View as LinksAnimateColor
import List_.LinksInline.View as LinksInline
import List_.LinksWithBordersInline.View as LinksWithBordersInline
import List_.Route
    exposing
        ( Route
            ( BlockItemDottedBorder
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
            , SlabStatLarge
            , SlabStatSmall
            )
        )
import List_.SlabStatLarge.View as SlabStatLarge
import List_.SlabStatSmall.View as SlabStatSmall


view : Route -> Html msg
view route =
    case route of
        BlockItemDottedBorder ->
            BlockItemDottedBorder.view

        BorderSpaced ->
            BorderSpaced.view

        BorderTight ->
            BorderTight.view

        ContactPhone ->
            ContactPhone.view

        FollowerNotifications ->
            FollowerNotifications.view

        FollowerNotificationsRoundedSquareAvatar ->
            FollowerNotificationsRoundedSquareAvatar.view

        Hashtags ->
            Hashtags.view

        ItemsImageTitlePrice ->
            ItemsImageTitlePrice.view

        LargeLinksInline ->
            LargeLinksInline.view

        LinksAnimateColor ->
            LinksAnimateColor.view

        LinksInline ->
            LinksInline.view

        LinksWithBordersInline ->
            LinksWithBordersInline.view

        SlabStatLarge ->
            SlabStatLarge.view

        SlabStatSmall ->
            SlabStatSmall.view
