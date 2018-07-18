module List_.View exposing (view)

import Html exposing (Html)
import List_.BlockItemDottedBorder.View as BlockItemDottedBorder
import List_.BorderSpaced.View as BorderSpaced
import List_.BorderTight.View as BorderTight
import List_.ContactPhone.View as ContactPhone
import List_.FollowerNotifications.View as FollowerNotifications
import List_.FollowerNotificationsRoundedSquareAvatar.View as FollowerNotificationsRoundedSquareAvatar
import List_.Route
    exposing
        ( Route
            ( BlockItemDottedBorder
            , BorderSpaced
            , BorderTight
            , ContactPhone
            , FollowerNotifications
            , FollowerNotificationsRoundedSquareAvatar
            )
        )


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
