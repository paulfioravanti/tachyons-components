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
import List_.Route as Route exposing (Route)
import List_.SlabStat.View as SlabStat
import List_.SlabStatLarge.View as SlabStatLarge
import List_.SlabStatSmall.View as SlabStatSmall
import List_.TitleText.View as TitleText


view : Route -> Html msg
view route =
    case route of
        Route.BlockItemDottedBorder ->
            BlockItemDottedBorder.view

        Route.BorderSpaced ->
            BorderSpaced.view

        Route.BorderTight ->
            BorderTight.view

        Route.ContactPhone ->
            ContactPhone.view

        Route.FollowerNotifications ->
            FollowerNotifications.view

        Route.FollowerNotificationsRoundedSquareAvatar ->
            FollowerNotificationsRoundedSquareAvatar.view

        Route.Hashtags ->
            Hashtags.view

        Route.ItemsImageTitlePrice ->
            ItemsImageTitlePrice.view

        Route.LargeLinksInline ->
            LargeLinksInline.view

        Route.LinksAnimateColor ->
            LinksAnimateColor.view

        Route.LinksInline ->
            LinksInline.view

        Route.LinksWithBordersInline ->
            LinksWithBordersInline.view

        Route.SlabStat ->
            SlabStat.view

        Route.SlabStatLarge ->
            SlabStatLarge.view

        Route.SlabStatSmall ->
            SlabStatSmall.view

        Route.TitleText ->
            TitleText.view
