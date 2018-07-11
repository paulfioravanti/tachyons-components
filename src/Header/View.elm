module Header.View exposing (view)

import Header.Route exposing (Route(CircleAvatarTitleSubtitle))
import Header.CircleAvatarTitleSubtitle.View as CircleAvatarTitleSubtitle
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        CircleAvatarTitleSubtitle ->
            CircleAvatarTitleSubtitle.view
