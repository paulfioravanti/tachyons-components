module Header.View exposing (view)

import Header.Route exposing (Route(CircleAvatarTitleSubtitle))
import Header.CircleAvatarTitleSubtitle.View as CircleAvatarTitleSubtitle
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        CircleAvatarTitleSubtitle ->
            CircleAvatarTitleSubtitle.view footer
