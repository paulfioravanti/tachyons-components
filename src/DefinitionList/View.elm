module DefinitionList.View exposing (view)

import DefinitionList.Inline.View as Inline
import DefinitionList.Route as Route exposing (Route)
import DefinitionList.Simple.View as Simple
import Html exposing (Html)


view : Route -> Html msg
view route =
    case route of
        Route.Inline ->
            Inline.view

        Route.Simple ->
            Simple.view
