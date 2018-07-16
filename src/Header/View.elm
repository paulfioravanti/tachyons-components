module Header.View exposing (view)

import Header.Route
    exposing
        ( Route
            ( CircleAvatarTitleSubtitle
            , RoundedAvatarTitleSubtitle
            )
        )
import Header.CircleAvatarTitleSubtitle.View as CircleAvatarTitleSubtitle
import Header.RoundedAvatarTitleSubtitle.View as RoundedAvatarTitleSubtitle
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        CircleAvatarTitleSubtitle ->
            CircleAvatarTitleSubtitle.view

        RoundedAvatarTitleSubtitle ->
            RoundedAvatarTitleSubtitle.view
