module Header.View exposing (view)

import Header.CircleAvatarTitleSubtitle.View as CircleAvatarTitleSubtitle
import Header.RoundedAvatarTitleSubtitle.View as RoundedAvatarTitleSubtitle
import Header.Route as Route exposing (Route)
import Header.StartupHero.View as StartupHero
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.CircleAvatarTitleSubtitle ->
            CircleAvatarTitleSubtitle.view

        Route.RoundedAvatarTitleSubtitle ->
            RoundedAvatarTitleSubtitle.view

        Route.StartupHero ->
            StartupHero.view
