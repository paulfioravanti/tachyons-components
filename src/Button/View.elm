module Button.View exposing (view)

import Button.Route exposing (Route(BasicPreviousNext))
import Button.BasicPreviousNext.View as BasicPreviousNext
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        BasicPreviousNext ->
            BasicPreviousNext.view footer
