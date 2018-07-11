module DefinitionList.View exposing (view)

import DefinitionList.Route exposing (Route(Inline))
import DefinitionList.Inline.View as Inline
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Inline ->
            Inline.view
