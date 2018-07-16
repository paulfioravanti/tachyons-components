module Header.View exposing (view)

import Header.Route
    exposing
        ( Route
            ( CircleAvatarTitleSubtitle
            , RoundedAvatarTitleSubtitle
            , StartupHero
            )
        )
import Header.CircleAvatarTitleSubtitle.View as CircleAvatarTitleSubtitle
import Header.RoundedAvatarTitleSubtitle.View as RoundedAvatarTitleSubtitle
import Header.StartupHero.View as StartupHero
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        CircleAvatarTitleSubtitle ->
            CircleAvatarTitleSubtitle.view

        RoundedAvatarTitleSubtitle ->
            RoundedAvatarTitleSubtitle.view

        StartupHero ->
            StartupHero.view
