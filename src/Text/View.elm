module Text.View exposing (view)

import Text.Route exposing (Route(LargeParagraph))
import Text.LargeParagraph.View as LargeParagraph
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        LargeParagraph ->
            LargeParagraph.view
