module Text.View exposing (view)

import Text.Route exposing (Route(LargeParagraph))
import Text.LargeParagraph.View as LargeParagraph
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        LargeParagraph ->
            LargeParagraph.view footer
