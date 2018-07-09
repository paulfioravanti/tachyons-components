module DefinitionList.View exposing (view)

import DefinitionList.Route exposing (Route(Inline))
import DefinitionList.Inline.View as Inline
import Html exposing (Html)


view : Route -> Html msg -> Html msg
view route footer =
    case route of
        Inline ->
            Inline.view footer
